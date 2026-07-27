// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_wallet_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverWalletSummaryModelImpl _$$DriverWalletSummaryModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverWalletSummaryModelImpl(
  availableBalance: (json['availableBalance'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  totalEarned: json['totalEarned'] as num?,
  totalWithdrawn: json['totalWithdrawn'] as num?,
  earningsSummary: json['earningsSummary'] == null
      ? null
      : EarningsSummaryModel.fromJson(
          json['earningsSummary'] as Map<String, dynamic>,
        ),
  recentTransactions: (json['recentTransactions'] as List<dynamic>?)
      ?.map((e) => RecentTransactionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DriverWalletSummaryModelImplToJson(
  _$DriverWalletSummaryModelImpl instance,
) => <String, dynamic>{
  'availableBalance': instance.availableBalance,
  'currency': instance.currency,
  'totalEarned': instance.totalEarned,
  'totalWithdrawn': instance.totalWithdrawn,
  'earningsSummary': instance.earningsSummary,
  'recentTransactions': instance.recentTransactions,
};

_$EarningsSummaryModelImpl _$$EarningsSummaryModelImplFromJson(
  Map<String, dynamic> json,
) => _$EarningsSummaryModelImpl(
  today: json['today'] == null
      ? null
      : EarningPeriodModel.fromJson(json['today'] as Map<String, dynamic>),
  thisWeek: json['thisWeek'] == null
      ? null
      : EarningPeriodModel.fromJson(json['thisWeek'] as Map<String, dynamic>),
  thisMonth: json['thisMonth'] == null
      ? null
      : EarningPeriodModel.fromJson(json['thisMonth'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$EarningsSummaryModelImplToJson(
  _$EarningsSummaryModelImpl instance,
) => <String, dynamic>{
  'today': instance.today,
  'thisWeek': instance.thisWeek,
  'thisMonth': instance.thisMonth,
};

_$EarningPeriodModelImpl _$$EarningPeriodModelImplFromJson(
  Map<String, dynamic> json,
) => _$EarningPeriodModelImpl(
  amount: json['amount'] as num?,
  tripsCount: (json['tripsCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$EarningPeriodModelImplToJson(
  _$EarningPeriodModelImpl instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'tripsCount': instance.tripsCount,
};

_$RecentTransactionModelImpl _$$RecentTransactionModelImplFromJson(
  Map<String, dynamic> json,
) => _$RecentTransactionModelImpl(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  subtitle: json['subtitle'] as String?,
  createdAt: json['createdAt'] as String?,
  amount: json['amount'] as num?,
  formattedAmount: json['formattedAmount'] as String?,
  isPositive: json['isPositive'] as bool?,
  type: json['type'] as String?,
  tripId: (json['tripId'] as num?)?.toInt(),
);

Map<String, dynamic> _$$RecentTransactionModelImplToJson(
  _$RecentTransactionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'createdAt': instance.createdAt,
  'amount': instance.amount,
  'formattedAmount': instance.formattedAmount,
  'isPositive': instance.isPositive,
  'type': instance.type,
  'tripId': instance.tripId,
};
