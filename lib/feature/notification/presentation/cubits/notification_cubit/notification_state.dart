import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_response_entity.dart';

part 'notification_state.freezed.dart';

enum NotificationStatus { initial, loading, success, failure, loadingMore }

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(NotificationStatus.initial) NotificationStatus status,
    @Default([]) List<NotificationItemEntity> notifications,
    @Default(0) int unreadCount,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
  }) = _NotificationState;
}
