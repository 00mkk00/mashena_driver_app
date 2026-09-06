// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mashena_driver_app/core/theme/app_colors.dart';
// import 'package:mashena_driver_app/core/theme/app_radius.dart';
// import 'package:mashena_driver_app/core/theme/app_shadows.dart';
// import 'package:mashena_driver_app/core/theme/app_spacing.dart';
// import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
// import 'package:mashena_driver_app/feature/home/data/home_models.dart';

// class EarningsMiniCard extends StatelessWidget {
//   final DriverProfileModel driver;

//   const EarningsMiniCard({super.key, required this.driver});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: AppSpacing.md.w,
//           vertical: AppSpacing.sm.h,
//         ),
//         decoration: BoxDecoration(
//           color: AppColors.cardLight,
//           borderRadius: BorderRadius.circular(AppRadius.lg.r),
//           boxShadow: AppShadows.card,
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // ── Wallet icon ───────────────────────────────────────
//             Container(
//               width: 32.r,
//               height: 32.r,
//               decoration: BoxDecoration(
//                 color: AppColors.onlineSurface,
//                 borderRadius: BorderRadius.circular(AppRadius.sm.r),
//               ),
//               child: Icon(
//                 Icons.account_balance_wallet_outlined,
//                 size: 18.r,
//                 color: AppColors.online,
//               ),
//             ),

//             SizedBox(width: AppSpacing.sm.w),

//             // ── Today ─────────────────────────────────────────────
//             _EarningColumn(
//               label: 'Today',
//               value: 'EGP ${driver.todayEarnings.toStringAsFixed(0)}',
//               valueColor: AppColors.online,
//             ),

//             SizedBox(width: AppSpacing.md.w),
//             Container(width: 1.w, height: 28.h, color: AppColors.divider),
//             SizedBox(width: AppSpacing.md.w),

//             // ── This week ─────────────────────────────────────────
//             _EarningColumn(
//               label: 'This week',
//               value: 'EGP ${driver.weeklyEarnings.toStringAsFixed(0)}',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ─── Reusable column ──────────────────────────────────────────────────────────
// class _EarningColumn extends StatelessWidget {
//   final String label;
//   final String value;
//   final Color? valueColor;

//   const _EarningColumn({
//     required this.label,
//     required this.value,
//     this.valueColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           label,
//           style: AppTextStyles.w500_12.copyWith(
//             color: AppColors.onSurfaceVariant,
//           ),
//         ),
//         SizedBox(height: 2.h),
//         Text(
//           value,
//           style: AppTextStyles.w700_14.copyWith(
//             color: valueColor ?? AppColors.onSurface,
//           ),
//         ),
//       ],
//     );
//   }
// }
