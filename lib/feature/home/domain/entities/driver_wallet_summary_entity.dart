import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_wallet_summary_entity.freezed.dart';

@freezed
class DriverWalletSummaryEntity with _$DriverWalletSummaryEntity {
  const factory DriverWalletSummaryEntity({
    required double availableBalance,
    required String currency,
    required num totalEarned,
    required num totalWithdrawn,
    required EarningsSummaryEntity earningsSummary,
    required List<RecentTransactionEntity> recentTransactions,
  }) = _DriverWalletSummaryEntity;
}

@freezed
class EarningsSummaryEntity with _$EarningsSummaryEntity {
  const factory EarningsSummaryEntity({
    required EarningPeriodEntity today,
    required EarningPeriodEntity thisWeek,
    required EarningPeriodEntity thisMonth,
  }) = _EarningsSummaryEntity;
}

@freezed
class EarningPeriodEntity with _$EarningPeriodEntity {
  const factory EarningPeriodEntity({
    required num amount,
    required int tripsCount,
  }) = _EarningPeriodEntity;
}

@freezed
class RecentTransactionEntity with _$RecentTransactionEntity {
  const factory RecentTransactionEntity({
    required int id,
    required String title,
    required String subtitle,
    required String createdAt,
    required num amount,
    required String formattedAmount,
    required bool isPositive,
    required String type,
    required int tripId,
  }) = _RecentTransactionEntity;
}
