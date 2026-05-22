import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/glass_icon_button.dart';
import 'driver_status_toggle.dart';

/// Top bar floating above the map with drawer, status toggle, and notifications.
class HomeTopBar extends StatelessWidget {
  final DriverStatusState statusState;
  final VoidCallback onToggleStatus;
  final VoidCallback onOpenDrawer;
  final VoidCallback onNotificationTap;
  final int notificationCount;

  const HomeTopBar({
    super.key,
    required this.statusState,
    required this.onToggleStatus,
    required this.onOpenDrawer,
    required this.onNotificationTap,
    this.notificationCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      child: Row(
        children: [
          // Drawer button
          GlassIconButton(icon: Icons.menu_rounded, onTap: onOpenDrawer),
          const SizedBox(width: AppSpacing.sm),

          // Status toggle — centered with Expanded
          Expanded(
            child: Center(
              child: DriverStatusToggle(
                state: statusState,
                onTap: onToggleStatus,
              ),
            ),
          ),

          const SizedBox(width: AppSpacing.sm),

          // Notification button with badge
          Stack(
            clipBehavior: Clip.none,
            children: [
              GlassIconButton(
                icon: Icons.notifications_outlined,
                onTap: onNotificationTap,
              ),
              if (notificationCount > 0)
                Positioned(
                  top: -4,
                  right: -4,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: AppColors.danger,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        notificationCount > 9 ? '9+' : '$notificationCount',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
