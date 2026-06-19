import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/logout_cubit/logout_state.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';

/// Full-featured professional driver app drawer.
class DriverAppDrawer extends StatelessWidget {
  final DriverProfileModel driver;

  const DriverAppDrawer({super.key, required this.driver});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit, LogoutState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {
            // Show loading indicator
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) =>
                  const Center(child: CircularProgressIndicator()),
            );
          },
          success: () {
            // Close loading dialog
            context.pop(context);
            // Close drawer
            context.pop(context);
            // Navigate to login and clear navigation stack
            context.go(AppRoutes.loginPath);
            // Show success snackbar
            context.showSuccessToast(S.of(context).authLogout);
          },
          failure: (error) {
            // Close loading dialog
            context.pop(context);
            // Show error snackbar
            context.showErrorToast(S.of(context).errorsNetwork);
          },
        );
      },
      child: Drawer(
        backgroundColor: AppColors
            .lightScaffold, // ✅ was: AppColors.surfaceVariant (wrong usage — surfaceVariant is for inputs)
        child: SafeArea(
          child: Column(
            children: [
              // Profile header
              _DrawerHeader(driver: driver),

              const Divider(height: 1, color: AppColors.divider),

              // Navigation items
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                  children: [
                    _DrawerItem(
                      icon: Icons.account_circle_outlined,
                      label: 'My Profile',
                      onTap: () => Navigator.pop(context),
                    ),
                    _DrawerItem(
                      icon: Icons.account_balance_wallet_outlined,
                      label: 'Earnings',
                      trailing: Text(
                        'EGP ${driver.todayEarnings.toStringAsFixed(0)}',
                        style: AppTextStyles.w600_12.copyWith(
                          color: AppColors.earning,
                        ), // ✅ was: AppColors.primaryColor — earnings use earning token
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    _DrawerItem(
                      icon: Icons.history_rounded,
                      label: 'Ride History',
                      onTap: () => Navigator.pop(context),
                    ),
                    _DrawerItem(
                      icon: Icons.description_outlined,
                      label: 'Documents',
                      trailing: _StatusBadge(label: 'Verified', isGood: true),
                      onTap: () => Navigator.pop(context),
                    ),
                    _DrawerItem(
                      icon: Icons.settings_outlined,
                      label: 'Settings',
                      onTap: () => Navigator.pop(context),
                    ),
                    _DrawerItem(
                      icon: Icons.help_outline_rounded,
                      label: 'Help & Support',
                      onTap: () => Navigator.pop(context),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.md,
                        vertical: AppSpacing.sm,
                      ),
                      child: Divider(color: AppColors.divider),
                    ),

                    _DrawerItem(
                      icon: Icons.logout_rounded,
                      label: 'Logout',
                      iconColor: AppColors.danger,
                      labelColor: AppColors.danger,
                      onTap: () {
                        context.read<LogoutCubit>().logout();
                      },
                    ),
                  ],
                ),
              ),

              // App version footer
              Padding(
                padding: EdgeInsets.all(AppSpacing.md),
                child: Text(
                  'Captain App v2.4.1',
                  style: AppTextStyles
                      .w400_12, // ✅ was: w400_16 — too large for a footer caption
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Drawer Header ────────────────────────────────────────────────────────────
class _DrawerHeader extends StatelessWidget {
  final DriverProfileModel driver;
  const _DrawerHeader({required this.driver});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundImage: NetworkImage(driver.photoUrl),
                backgroundColor: AppColors.surfaceVariant,
              ),
              Positioned(
                bottom: 2,
                right: 2,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: AppColors
                        .online, // ✅ was: AppColors.primaryColor — online status dot uses online token
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors
                          .lightScaffold, // ✅ was: Colors.white — use scaffold bg token
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  driver.name,
                  style: AppTextStyles.w500_14.copyWith(
                    color: AppColors.cardDark,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs), // ✅ was: hardcoded 2
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      size: 14,
                      color: AppColors.warning,
                    ),
                    const SizedBox(width: AppSpacing.xs), // ✅ was: hardcoded 3
                    Text(
                      '${driver.rating}',
                      style: AppTextStyles.w500_12.copyWith(
                        color: AppColors.cardDark,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      '· ${driver.totalTrips} trips',
                      style: AppTextStyles.w400_12.copyWith(
                        // ✅ was: w400_16 — too large for a secondary detail
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xs), // ✅ was: hardcoded 4
                Text(
                  driver.vehiclePlate,
                  style: AppTextStyles.w600_12.copyWith(
                    // ✅ was: w400_14 + manual fontWeight override
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Drawer Item ──────────────────────────────────────────────────────────────
class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Widget? trailing;
  final Color? iconColor;
  final Color? labelColor;

  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.trailing,
    this.iconColor,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveIconColor = iconColor ?? AppColors.primaryColor;
    return ListTile(
      leading: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: iconColor != null
              ? AppColors
                    .dangerSurface // ✅ was: .withOpacity(0.08) — use surface token for danger; primary uses primarySurface
              : AppColors.primarySurface,
          borderRadius: BorderRadius.circular(AppRadius.sm),
        ),
        child: Icon(icon, size: 20, color: effectiveIconColor),
      ),
      title: Text(
        label,
        style: AppTextStyles.w500_14.copyWith(
          // ✅ was: w600_12 + manual w500 override — use correct style directly
          color: labelColor ?? AppColors.onSurface,
        ),
      ),
      trailing:
          trailing ??
          const Icon(
            Icons.chevron_right_rounded,
            size: 18,
            color: AppColors.onSurfaceVariant,
          ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.xs,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
    );
  }
}

// ─── Status Badge ─────────────────────────────────────────────────────────────
class _StatusBadge extends StatelessWidget {
  final String label;
  final bool isGood;
  const _StatusBadge({required this.label, required this.isGood});

  @override
  Widget build(BuildContext context) {
    final color = isGood ? AppColors.success : AppColors.danger;
    final surfaceColor = isGood
        ? AppColors.successSurface
        : AppColors
              .dangerSurface; // ✅ was: color.withOpacity(0.1) — use surface tokens
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ), // ✅ was: hardcoded 3
      decoration: BoxDecoration(
        color: surfaceColor,
        borderRadius: BorderRadius.circular(AppRadius.full),
      ),
      child: Text(
        label,
        style: AppTextStyles.w600_12.copyWith(
          color: color,
        ), // ✅ was: w300_12 + hardcoded fontSize: 11
      ),
    );
  }
}
