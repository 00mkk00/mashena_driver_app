import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/get_notifications_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/mark_notification_as_read_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/usecases/get_notifications_use_case.dart';
import 'package:mashena_driver_app/feature/notification/domain/usecases/mark_all_notifications_as_read_use_case.dart';
import 'package:mashena_driver_app/feature/notification/domain/usecases/mark_notification_as_read_use_case.dart';
import 'package:mashena_driver_app/feature/notification/presentation/cubits/notification_cubit/notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final GetNotificationsUseCase _getNotificationsUseCase;
  final MarkNotificationAsReadUseCase _markNotificationAsReadUseCase;
  final MarkAllNotificationsAsReadUseCase _markAllNotificationsAsReadUseCase;

  static const int _limit = 15;
  bool _isFetching = false;

  NotificationCubit(
    this._getNotificationsUseCase,
    this._markNotificationAsReadUseCase,
    this._markAllNotificationsAsReadUseCase,
  ) : super(const NotificationState());

  Future<void> loadMore() => loadNotifications();

  Future<void> fetchUnreadCount() async {
    const params = GetNotificationsParams(skip: 0, limit: 0);
    final result = await _getNotificationsUseCase(params);

    if (isClosed) return;

    result.fold(
      (failure) {
        // Handle error silently or as needed
      },
      (response) {
        if (!isClosed) {
          emit(state.copyWith(unreadCount: response.unreadCount));
        }
      },
    );
  }

  Future<void> loadNotifications({bool refresh = false}) async {
    if (isClosed || _isFetching) return;
    if (state.hasReachedMax &&
        !refresh &&
        state.status == NotificationStatus.success) {}

    _isFetching = true;

    try {
      if (refresh || state.status == NotificationStatus.initial) {
        if (!isClosed) {
          emit(
            state.copyWith(
              status: NotificationStatus.loading,
              notifications: [],
              hasReachedMax: false,
              errorMessage: null,
            ),
          );
        }
      } else {
        if (!isClosed) {
          emit(state.copyWith(status: NotificationStatus.loadingMore));
        }
      }

      final skip = state.notifications.length;
      final params = GetNotificationsParams(skip: skip, limit: _limit);

      final result = await _getNotificationsUseCase(params);

      if (isClosed) return;

      result.fold(
        (failure) {
          if (!isClosed) {
            emit(
              state.copyWith(
                status: NotificationStatus.failure,
                errorMessage: failure.rawMessage,
              ),
            );
          }
        },
        (response) {
          if (!isClosed) {
            final newNotifications = response.data;
            emit(
              state.copyWith(
                status: NotificationStatus.success,
                notifications: List.of(state.notifications)
                  ..addAll(newNotifications),
                unreadCount: response.unreadCount,
                hasReachedMax: newNotifications.length < _limit,
              ),
            );
          }
        },
      );
    } finally {
      _isFetching = false;
    }
  }

  Future<void> markAsRead(int id) async {
    if (isClosed) return;

    // Optimistic UI update
    final updatedNotifications = state.notifications.map((notif) {
      if (notif.id == id && !notif.isRead) {
        return notif.copyWith(isRead: true);
      }
      return notif;
    }).toList();

    int newUnreadCount = state.unreadCount;
    if (newUnreadCount > 0) newUnreadCount--;

    emit(
      state.copyWith(
        notifications: updatedNotifications,
        unreadCount: newUnreadCount,
      ),
    );

    final result = await _markNotificationAsReadUseCase(
      MarkNotificationAsReadParams(id: id),
    );

    if (isClosed) return;

    result.fold(
      (failure) {
        // Handle failure if needed
      },
      (success) {
        // Success handled by optimistic update
      },
    );
  }

  Future<void> markAllAsRead() async {
    if (isClosed || state.unreadCount == 0) return;

    // Optimistic UI update
    final updatedNotifications = state.notifications.map((notif) {
      return notif.copyWith(isRead: true);
    }).toList();

    emit(state.copyWith(notifications: updatedNotifications, unreadCount: 0));

    final result = await _markAllNotificationsAsReadUseCase();

    if (isClosed) return;

    result.fold(
      (failure) {
        // Revert or show error could be done here
      },
      (success) {
        // Done
      },
    );
  }
}
