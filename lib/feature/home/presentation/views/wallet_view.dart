import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/helper_functions/snack_bars.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_wallet_cubit/driver_wallet_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_wallet_cubit/driver_wallet_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/balance_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/earnings_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wallet_widgets/transaction_item.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DriverWalletCubit>(
      create: (_) => getIt<DriverWalletCubit>()..getWalletSummary(),
      child: const WalletViewBody(),
    );
  }
}

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.r,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          S.of(context).drawerWallet,
          style: AppTextStyles.w700_18.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<DriverWalletCubit, DriverWalletState>(
        listener: (context, state) {
          if (state.status == DriverWalletStatus.failure &&
              state.errorMessage != null) {
            showErrorMessage(state.errorMessage!, context);
          }
        },
        builder: (context, state) {
          if (state.status == DriverWalletStatus.loading) {
            return const _WalletShimmerLoading();
          }

          if (state.status == DriverWalletStatus.failure &&
              state.walletSummary == null) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline_rounded,
                      size: 48.r,
                      color: AppColors.danger,
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    Text(
                      S.of(context).walletFailedToLoad,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.w500_14.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg.w,
                          vertical: AppSpacing.sm.h,
                        ),
                      ),
                      onPressed: () =>
                          context.read<DriverWalletCubit>().getWalletSummary(),
                      icon: const Icon(Icons.refresh_rounded),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          final summary = state.walletSummary;
          final recentTxList = summary?.recentTransactions ?? const [];

          return RefreshIndicator(
            onRefresh: () => context.read<DriverWalletCubit>().getWalletSummary(
              isRefresh: true,
            ),
            color: AppColors.primaryColor,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.md.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Balance Card ───────────────────────────────────────────
                  BalanceCard(summary: summary),
                  SizedBox(height: AppSpacing.lg.h),

                  // ── Quick Actions ──────────────────────────────────────────
                  // const QuickActionsRow(),
                  // SizedBox(height: AppSpacing.lg.h),

                  // ── Earnings Summary ───────────────────────────────────────
                  Text(
                    S.of(context).walletEarningsSummary,
                    style: AppTextStyles.w600_16.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  SizedBox(height: AppSpacing.sm.h),
                  EarningsSummaryCard(
                    summary: summary?.earningsSummary,
                    currency: summary?.currency,
                  ),
                  SizedBox(height: AppSpacing.lg.h),

                  // ── Recent Transactions ────────────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).walletRecentTransactions,
                        style: AppTextStyles.w600_16.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.xs.h),
                  if (recentTxList.isEmpty)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSpacing.lg.h),
                      child: Center(
                        child: Text(
                          S.of(context).walletNoTransactions,
                          style: AppTextStyles.w500_14.copyWith(
                            color: AppColors.textGrey,
                          ),
                        ),
                      ),
                    )
                  else
                    ...recentTxList.map((tx) => TransactionItem.fromEntity(tx)),
                  SizedBox(height: AppSpacing.md.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _WalletShimmerLoading extends StatelessWidget {
  const _WalletShimmerLoading();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.md.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Balance card shimmer
          const ShimmerCard(height: 170, borderRadius: 20),
          SizedBox(height: AppSpacing.lg.h),

          // Quick actions shimmer
          const ShimmerCard(height: 70, borderRadius: 16),
          SizedBox(height: AppSpacing.lg.h),

          // Earnings summary title shimmer
          const ShimmerCard(height: 18, width: 140, borderRadius: 6),
          SizedBox(height: AppSpacing.sm.h),
          const ShimmerCard(height: 140, borderRadius: 16),
          SizedBox(height: AppSpacing.lg.h),

          // Transactions title shimmer
          const ShimmerCard(height: 18, width: 160, borderRadius: 6),
          SizedBox(height: AppSpacing.sm.h),
          const ShimmerCard(height: 64, borderRadius: 12),
          SizedBox(height: AppSpacing.sm.h),
          const ShimmerCard(height: 64, borderRadius: 12),
          SizedBox(height: AppSpacing.sm.h),
          const ShimmerCard(height: 64, borderRadius: 12),
        ],
      ),
    );
  }
}
