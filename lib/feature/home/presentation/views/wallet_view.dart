import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/balance_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/earnings_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/quick_action_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/transaction_item.dart';

// ─── Wallet View ──────────────────────────────────────────────────────────────
class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.lightScaffold,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.r,
            color: AppColors.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Wallet',
          style: AppTextStyles.w600_18.copyWith(color: AppColors.onSurface),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.md.w,
          vertical: AppSpacing.md.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Balance Card ───────────────────────────────────────────
            BalanceCard(),
            SizedBox(height: AppSpacing.lg.h),

            // ── Quick Actions ──────────────────────────────────────────
            QuickActionsRow(),
            SizedBox(height: AppSpacing.lg.h),

            // ── Earnings Summary ───────────────────────────────────────
            Text(
              'Earnings Summary',
              style: AppTextStyles.w600_16.copyWith(color: AppColors.onSurface),
            ),
            SizedBox(height: AppSpacing.sm.h),
            EarningsSummaryCard(),
            SizedBox(height: AppSpacing.lg.h),

            // ── Recent Transactions ────────────────────────────────────
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: AppTextStyles.w600_16.copyWith(
                    color: AppColors.onSurface,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: AppTextStyles.w500_12.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.xs.h),
            TransactionItem(
              icon: Icons.directions_car_rounded,
              title: 'Trip #4821',
              subtitle: 'Today, 10:24 AM',
              amount: '+85.00',
              isCredit: true,
            ),
            TransactionItem(
              icon: Icons.directions_car_rounded,
              title: 'Trip #4820',
              subtitle: 'Today, 08:10 AM',
              amount: '+120.00',
              isCredit: true,
            ),
            TransactionItem(
              icon: Icons.account_balance_wallet_rounded,
              title: 'Withdrawal',
              subtitle: 'Yesterday, 06:00 PM',
              amount: '-500.00',
              isCredit: false,
            ),
            TransactionItem(
              icon: Icons.directions_car_rounded,
              title: 'Trip #4819',
              subtitle: 'Yesterday, 02:45 PM',
              amount: '+65.50',
              isCredit: true,
            ),
            TransactionItem(
              icon: Icons.directions_car_rounded,
              title: 'Trip #4818',
              subtitle: 'Yesterday, 12:00 PM',
              amount: '+95.00',
              isCredit: true,
            ),
            TransactionItem(
              icon: Icons.directions_car_rounded,
              title: 'Trip #4817',
              subtitle: '2 days ago, 09:30 AM',
              amount: '+45.00',
              isCredit: true,
            ),
            SizedBox(height: AppSpacing.md.h),
          ],
        ),
      ),
    );
  }
}
