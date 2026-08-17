import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/glass_icon_button.dart';

class HomeTopBar extends StatelessWidget {
  final VoidCallback onOpenDrawer;
  final VoidCallback onNotificationTap;
  final int notificationCount;

  const HomeTopBar({
    super.key,
    required this.onOpenDrawer,
    required this.onNotificationTap,
    this.notificationCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ── Drawer button ─────────────────────────────────────
          GlassIconButton(icon: Icons.menu_rounded, onTap: onOpenDrawer),

          // ── Notification button + badge ───────────────────────
          Stack(
            clipBehavior: Clip.none,
            children: [
              GlassIconButton(
                icon: Icons.notifications_outlined,
                onTap: onNotificationTap,
              ),
              if (notificationCount > 0)
                Positioned(
                  top: -4.r,
                  right: -4.r,
                  child: Container(
                    width: 18.r,
                    height: 18.r,
                    decoration: const BoxDecoration(
                      color: AppColors.danger,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        notificationCount > 9 ? '9+' : '$notificationCount',
                        style: AppTextStyles.w700_12.copyWith(
                          fontSize: 10.sp,
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
