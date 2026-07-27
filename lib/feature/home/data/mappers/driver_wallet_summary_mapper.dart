import 'package:mashena_driver_app/feature/home/data/models/driver_wallet_summary_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';

extension DriverWalletSummaryMapper on DriverWalletSummaryModel {
  DriverWalletSummaryEntity toEntity() {
    return DriverWalletSummaryEntity(
      availableBalance: availableBalance ?? 0.0,
      currency: currency ?? '',
      totalEarned: totalEarned ?? 0,
      totalWithdrawn: totalWithdrawn ?? 0,
      earningsSummary:
          earningsSummary?.toEntity() ??
          const EarningsSummaryEntity(
            today: EarningPeriodEntity(amount: 0, tripsCount: 0),
            thisWeek: EarningPeriodEntity(amount: 0, tripsCount: 0),
            thisMonth: EarningPeriodEntity(amount: 0, tripsCount: 0),
          ),
      recentTransactions:
          recentTransactions?.map((t) => t.toEntity()).toList() ?? const [],
    );
  }
}

extension EarningsSummaryMapper on EarningsSummaryModel {
  EarningsSummaryEntity toEntity() {
    return EarningsSummaryEntity(
      today:
          today?.toEntity() ??
          const EarningPeriodEntity(amount: 0, tripsCount: 0),
      thisWeek:
          thisWeek?.toEntity() ??
          const EarningPeriodEntity(amount: 0, tripsCount: 0),
      thisMonth:
          thisMonth?.toEntity() ??
          const EarningPeriodEntity(amount: 0, tripsCount: 0),
    );
  }
}

extension EarningPeriodMapper on EarningPeriodModel {
  EarningPeriodEntity toEntity() {
    return EarningPeriodEntity(
      amount: amount ?? 0,
      tripsCount: tripsCount ?? 0,
    );
  }
}

extension RecentTransactionMapper on RecentTransactionModel {
  RecentTransactionEntity toEntity() {
    return RecentTransactionEntity(
      id: id ?? 0,
      title: title ?? '',
      subtitle: subtitle ?? '',
      createdAt: createdAt ?? '',
      amount: amount ?? 0,
      formattedAmount: formattedAmount ?? '',
      isPositive: isPositive ?? false,
      type: type ?? '',
      tripId: tripId ?? 0,
    );
  }
}
