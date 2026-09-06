import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_wallet_summary_model.freezed.dart';
part 'driver_wallet_summary_model.g.dart';

@freezed
class DriverWalletSummaryModel with _$DriverWalletSummaryModel {
  const factory DriverWalletSummaryModel({
    double? availableBalance,
    String? currency,
    num? totalEarned,
    num? totalWithdrawn,
    EarningsSummaryModel? earningsSummary,
    List<RecentTransactionModel>? recentTransactions,
  }) = _DriverWalletSummaryModel;

  factory DriverWalletSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$DriverWalletSummaryModelFromJson(json);
}

@freezed
class EarningsSummaryModel with _$EarningsSummaryModel {
  const factory EarningsSummaryModel({
    EarningPeriodModel? today,
    EarningPeriodModel? thisWeek,
    EarningPeriodModel? thisMonth,
  }) = _EarningsSummaryModel;

  factory EarningsSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$EarningsSummaryModelFromJson(json);
}

@freezed
class EarningPeriodModel with _$EarningPeriodModel {
  const factory EarningPeriodModel({num? amount, int? tripsCount}) =
      _EarningPeriodModel;

  factory EarningPeriodModel.fromJson(Map<String, dynamic> json) =>
      _$EarningPeriodModelFromJson(json);
}

@freezed
class RecentTransactionModel with _$RecentTransactionModel {
  const factory RecentTransactionModel({
    int? id,
    String? title,
    String? subtitle,
    String? createdAt,
    num? amount,
    String? formattedAmount,
    bool? isPositive,
    String? type,
    int? tripId,
  }) = _RecentTransactionModel;

  factory RecentTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$RecentTransactionModelFromJson(json);
}
