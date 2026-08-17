import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/notification/data/enums/notification_type_enum.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/presentation/cubits/notification_cubit/notification_cubit.dart';
import 'package:mashena_driver_app/feature/notification/presentation/cubits/notification_cubit/notification_state.dart';
import 'package:intl/intl.dart';

// ─── Notifications View ───────────────────────────────────────────────────────
class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<NotificationCubit>()..loadNotifications(),
      child: const _NotificationsViewBody(),
    );
  }
}

class _NotificationsViewBody extends StatefulWidget {
  const _NotificationsViewBody();

  @override
  State<_NotificationsViewBody> createState() => _NotificationsViewBodyState();
}

class _NotificationsViewBodyState extends State<_NotificationsViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollControllerAll = ScrollController();
  final ScrollController _scrollControllerUnread = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _scrollControllerAll.addListener(() {
      if (_scrollControllerAll.position.extentAfter < 200) {
        context.read<NotificationCubit>().loadMore();
      }
    });

    _scrollControllerUnread.addListener(() {
      if (_scrollControllerUnread.position.extentAfter < 200) {
        context.read<NotificationCubit>().loadMore();
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollControllerAll.dispose();
    _scrollControllerUnread.dispose();
    super.dispose();
  }

  void _onNotificationTap(BuildContext context, NotificationItemEntity item) {
    if (!item.isRead) {
      context.read<NotificationCubit>().markAsRead(item.id);
    }

    switch (item.type) {
      case NotificationType.tripCancelled:
        context.pushNamed(AppRoutes.historyView);
        break;
      case NotificationType.walletDeposit:
      case NotificationType.walletTransfer:
        context.pushNamed(AppRoutes.walletView);
        break;
      case NotificationType.driverApproved:
        context.pushNamed(AppRoutes.documentView);
        break;
      case NotificationType.unknown:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final scaffoldBg = isDark
        ? AppColors.darkScaffold
        : AppColors.lightScaffold;
    final onSurfaceColor = isDark
        ? AppColors.onSurfaceDark
        : AppColors.onSurface;
    final primaryCol = isDark ? AppColors.primaryLight : AppColors.primaryColor;

    return Scaffold(
      backgroundColor: scaffoldBg,
      appBar: AppBar(
        backgroundColor: scaffoldBg,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.r,
            color: onSurfaceColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: BlocBuilder<NotificationCubit, NotificationState>(
          builder: (context, state) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  s.notificationsTitle,
                  style: AppTextStyles.w600_18.copyWith(color: onSurfaceColor),
                ),
                if (state.unreadCount > 0) ...[
                  SizedBox(width: AppSpacing.xs.w),
                  _UnreadBadge(count: state.unreadCount),
                ],
              ],
            );
          },
        ),
        centerTitle: true,
        actions: [
          BlocBuilder<NotificationCubit, NotificationState>(
            builder: (context, state) {
              if (state.unreadCount > 0) {
                return TextButton(
                  onPressed: () =>
                      context.read<NotificationCubit>().markAllAsRead(),
                  child: Text(
                    s.notificationsMarkAllRead,
                    style: AppTextStyles.w500_12.copyWith(color: primaryCol),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.h),
          child: _NotifTabBar(controller: _tabController),
        ),
      ),
      body: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          if (state.status == NotificationStatus.initial ||
              state.status == NotificationStatus.loading) {
            return const _ShimmerLoadingState();
          }

          if (state.status == NotificationStatus.failure &&
              state.notifications.isEmpty) {
            return _ErrorState(
              message: state.errorMessage ?? s.notificationsErrorFailed,
              onRetry: () =>
                  context.read<NotificationCubit>().loadNotifications(),
            );
          }

          final allNotifs = state.notifications;
          final unreadNotifs = allNotifs.where((n) => !n.isRead).toList();

          return TabBarView(
            controller: _tabController,
            children: [
              // ── All ──────────────────────────────────────────────────
              RefreshIndicator(
                onRefresh: () => context
                    .read<NotificationCubit>()
                    .loadNotifications(refresh: true),
                child: allNotifs.isEmpty
                    ? const _EmptyState()
                    : _NotifList(
                        notifications: allNotifs,
                        scrollController: _scrollControllerAll,
                        isLoadingMore:
                            state.status == NotificationStatus.loadingMore,
                        onTap: (item) => _onNotificationTap(context, item),
                        isDark: isDark,
                      ),
              ),
              // ── Unread ───────────────────────────────────────────────
              RefreshIndicator(
                onRefresh: () => context
                    .read<NotificationCubit>()
                    .loadNotifications(refresh: true),
                child: unreadNotifs.isEmpty
                    ? const _EmptyState()
                    : _NotifList(
                        notifications: unreadNotifs,
                        scrollController: _scrollControllerUnread,
                        isLoadingMore:
                            state.status == NotificationStatus.loadingMore,
                        onTap: (item) => _onNotificationTap(context, item),
                        isDark: isDark,
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// ─── Tab Bar ──────────────────────────────────────────────────────────────────
class _NotifTabBar extends StatelessWidget {
  final TabController controller;
  const _NotifTabBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final surfaceVariant = isDark
        ? AppColors.surfaceVariantDark
        : AppColors.surfaceVariant;
    final onSurfaceVariant = isDark
        ? AppColors.onSurfaceVariantDark
        : AppColors.onSurfaceVariant;
    final primaryCol = isDark ? AppColors.primaryLight : AppColors.primaryColor;
    final s = S.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w, vertical: 6.h),
      height: 40.h,
      decoration: BoxDecoration(
        color: surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.full.r),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          color: primaryCol,
          borderRadius: BorderRadius.circular(AppRadius.full.r),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelStyle: AppTextStyles.w600_12,
        unselectedLabelStyle: AppTextStyles.w400_10,
        labelColor: Colors.white,
        unselectedLabelColor: onSurfaceVariant,
        tabs: [
          Tab(text: s.notificationsAll),
          Tab(text: s.notificationsUnread),
        ],
      ),
    );
  }
}

// ─── Notification List ────────────────────────────────────────────────────────
class _NotifList extends StatelessWidget {
  final List<NotificationItemEntity> notifications;
  final ScrollController scrollController;
  final bool isLoadingMore;
  final void Function(NotificationItemEntity) onTap;
  final bool isDark;

  const _NotifList({
    required this.notifications,
    required this.scrollController,
    required this.isLoadingMore,
    required this.onTap,
    required this.isDark,
  });

  String _formatTime(String? timeStr, BuildContext context) {
    if (timeStr == null || timeStr.isEmpty) return '';
    final time = DateTime.tryParse(timeStr);
    if (time == null) return timeStr;
    final now = DateTime.now();
    final difference = now.difference(time);
    final s = S.of(context);

    if (difference.inDays == 0 && now.day == time.day) {
      return '${s.notificationsToday} ${DateFormat('hh:mm a').format(time)}';
    } else if (difference.inDays == 1 ||
        (difference.inDays == 0 && now.day != time.day)) {
      return '${s.notificationsYesterday} ${DateFormat('hh:mm a').format(time)}';
    } else {
      return DateFormat('dd MMM yyyy, hh:mm a').format(time);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h,
      ),
      itemCount: notifications.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == notifications.length) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md.r),
              child: const CircularProgressIndicator(),
            ),
          );
        }

        final item = notifications[index];
        final timeStr = _formatTime(item.createdAt, context);

        return _NotifCard(
          item: item,
          timeStr: timeStr,
          onTap: () => onTap(item),
          isDark: isDark,
        );
      },
    );
  }
}

// ─── Notification Card ────────────────────────────────────────────────────────
class _NotifCard extends StatelessWidget {
  final NotificationItemEntity item;
  final String timeStr;
  final VoidCallback onTap;
  final bool isDark;

  const _NotifCard({
    required this.item,
    required this.timeStr,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    final config = _NotifConfig.from(item.type, isDark);
    final cardBg = isDark ? AppColors.cardDark : AppColors.cardLight;
    final onSurfaceColor = isDark
        ? AppColors.onSurfaceDark
        : AppColors.onSurface;
    final textGreyColor = isDark ? AppColors.textGreyDark : AppColors.textGrey;
    final onSurfaceVariantColor = isDark
        ? AppColors.onSurfaceVariantDark
        : AppColors.onSurfaceVariant;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
        decoration: BoxDecoration(
          color: item.isRead ? cardBg : config.unreadBg,
          borderRadius: BorderRadius.circular(AppRadius.md.r),
          boxShadow: AppShadows.card,
          border: item.isRead
              ? Border.all(
                  color: isDark
                      ? AppColors.borderColorDark
                      : Colors.transparent,
                  width: 1,
                )
              : Border.all(
                  color: config.color.withValues(alpha: 0.2),
                  width: 1,
                ),
        ),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Icon ────────────────────────────────────────────
              Container(
                width: 44.r,
                height: 44.r,
                decoration: BoxDecoration(
                  color: item.isRead
                      ? config.surface
                      : config.color.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(AppRadius.sm.r),
                ),
                child: Icon(config.icon, size: 22.r, color: config.color),
              ),
              SizedBox(width: AppSpacing.md.w),

              // ── Content ─────────────────────────────────────────
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                            style:
                                (item.isRead
                                        ? AppTextStyles.w500_14
                                        : AppTextStyles.w600_14)
                                    .copyWith(color: onSurfaceColor),
                          ),
                        ),
                        if (!item.isRead)
                          Container(
                            width: 8.r,
                            height: 8.r,
                            decoration: BoxDecoration(
                              color: config.color,
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      item.body,
                      style: AppTextStyles.w400_12.copyWith(
                        color: item.isRead
                            ? textGreyColor
                            : onSurfaceVariantColor,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppSpacing.xs.h),
                    Text(
                      timeStr,
                      style: AppTextStyles.w400_10.copyWith(
                        color: textGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Unread Badge ─────────────────────────────────────────────────────────────
class _UnreadBadge extends StatelessWidget {
  final int count;
  const _UnreadBadge({required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.danger,
        borderRadius: BorderRadius.circular(AppRadius.full.r),
      ),
      child: Text(
        count > 9 ? '9+' : '$count',
        style: AppTextStyles.w600_12.copyWith(color: Colors.white),
      ),
    );
  }
}

// ─── Empty State ──────────────────────────────────────────────────────────────
class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final onSurfaceColor = isDark
        ? AppColors.onSurfaceDark
        : AppColors.onSurface;
    final textGreyColor = isDark ? AppColors.textGreyDark : AppColors.textGrey;
    final primaryCol = isDark ? AppColors.primaryLight : AppColors.primaryColor;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80.r,
            height: 80.r,
            decoration: BoxDecoration(
              color: AppColors.primarySurface.withValues(
                alpha: isDark ? 0.2 : 1.0,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.notifications_off_outlined,
              size: 36.r,
              color: primaryCol,
            ),
          ),
          SizedBox(height: AppSpacing.md.h),
          Text(
            s.notificationsNoNotifications,
            style: AppTextStyles.w600_16.copyWith(color: onSurfaceColor),
          ),
          SizedBox(height: AppSpacing.xs.h),
          Text(
            s.notificationsYouAreCaughtUp,
            style: AppTextStyles.w400_14.copyWith(color: textGreyColor),
          ),
        ],
      ),
    );
  }
}

// ─── Error State ──────────────────────────────────────────────────────────────
class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final onSurfaceColor = isDark
        ? AppColors.onSurfaceDark
        : AppColors.onSurface;
    final primaryCol = isDark ? AppColors.primaryLight : AppColors.primaryColor;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, size: 48.r, color: AppColors.danger),
          SizedBox(height: AppSpacing.md.h),
          Text(
            message,
            style: AppTextStyles.w500_14.copyWith(color: onSurfaceColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.md.h),
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryCol,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.md.r),
              ),
            ),
            child: Text(
              S.of(context).commonRetry,
              style: AppTextStyles.w600_14.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Shimmer Loading State ────────────────────────────────────────────────────
class _ShimmerLoadingState extends StatelessWidget {
  const _ShimmerLoadingState();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
          child: ShimmerCard(
            height: 80,
            width: double.infinity,
            borderRadius: AppRadius.md.r,
          ),
        );
      },
    );
  }
}

// ─── Notif Config ─────────────────────────────────────────────────────────────
class _NotifConfig {
  final IconData icon;
  final Color color;
  final Color surface;
  final Color unreadBg;

  const _NotifConfig({
    required this.icon,
    required this.color,
    required this.surface,
    required this.unreadBg,
  });

  factory _NotifConfig.from(NotificationType type, bool isDark) {
    switch (type) {
      case NotificationType.tripCancelled:
        return _NotifConfig(
          icon: Icons.cancel_rounded,
          color: isDark ? AppColors.dangerDark : AppColors.danger,
          surface: isDark
              ? AppColors.dangerSurface.withValues(alpha: 0.1)
              : AppColors.dangerSurface,
          unreadBg: isDark ? const Color(0xFF2C1C1C) : const Color(0xFFFFEBEE),
        );
      case NotificationType.walletDeposit:
      case NotificationType.walletTransfer:
        return _NotifConfig(
          icon: Icons.account_balance_wallet_rounded,
          color: AppColors.earning,
          surface: isDark
              ? AppColors.earningSurface.withValues(alpha: 0.1)
              : AppColors.earningSurface,
          unreadBg: isDark ? const Color(0xFF1A2A2A) : const Color(0xFFE8F5F3),
        );
      case NotificationType.driverApproved:
        return _NotifConfig(
          icon: Icons.verified_user_rounded,
          color: isDark ? AppColors.successLight : AppColors.success,
          surface: isDark
              ? AppColors.successSurface.withValues(alpha: 0.1)
              : AppColors.successSurface,
          unreadBg: isDark ? const Color(0xFF1E2E1E) : const Color(0xFFE8F5E9),
        );
      case NotificationType.unknown:
        return _NotifConfig(
          icon: Icons.notifications_active_rounded,
          color: isDark ? AppColors.primaryLight : AppColors.primaryColor,
          surface: isDark
              ? AppColors.primarySurface.withValues(alpha: 0.1)
              : AppColors.primarySurface,
          unreadBg: isDark ? const Color(0xFF1E1E2C) : const Color(0xFFF3F2FE),
        );
    }
  }
}
