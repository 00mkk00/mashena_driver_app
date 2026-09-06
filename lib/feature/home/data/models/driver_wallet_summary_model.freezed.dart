// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_wallet_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverWalletSummaryModel _$DriverWalletSummaryModelFromJson(
  Map<String, dynamic> json,
) {
  return _DriverWalletSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$DriverWalletSummaryModel {
  double? get availableBalance => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  num? get totalEarned => throw _privateConstructorUsedError;
  num? get totalWithdrawn => throw _privateConstructorUsedError;
  EarningsSummaryModel? get earningsSummary =>
      throw _privateConstructorUsedError;
  List<RecentTransactionModel>? get recentTransactions =>
      throw _privateConstructorUsedError;

  /// Serializes this DriverWalletSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverWalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverWalletSummaryModelCopyWith<DriverWalletSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverWalletSummaryModelCopyWith<$Res> {
  factory $DriverWalletSummaryModelCopyWith(
    DriverWalletSummaryModel value,
    $Res Function(DriverWalletSummaryModel) then,
  ) = _$DriverWalletSummaryModelCopyWithImpl<$Res, DriverWalletSummaryModel>;
  @useResult
  $Res call({
    double? availableBalance,
    String? currency,
    num? totalEarned,
    num? totalWithdrawn,
    EarningsSummaryModel? earningsSummary,
    List<RecentTransactionModel>? recentTransactions,
  });

  $EarningsSummaryModelCopyWith<$Res>? get earningsSummary;
}

/// @nodoc
class _$DriverWalletSummaryModelCopyWithImpl<
  $Res,
  $Val extends DriverWalletSummaryModel
>
    implements $DriverWalletSummaryModelCopyWith<$Res> {
  _$DriverWalletSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverWalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBalance = freezed,
    Object? currency = freezed,
    Object? totalEarned = freezed,
    Object? totalWithdrawn = freezed,
    Object? earningsSummary = freezed,
    Object? recentTransactions = freezed,
  }) {
    return _then(
      _value.copyWith(
            availableBalance: freezed == availableBalance
                ? _value.availableBalance
                : availableBalance // ignore: cast_nullable_to_non_nullable
                      as double?,
            currency: freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalEarned: freezed == totalEarned
                ? _value.totalEarned
                : totalEarned // ignore: cast_nullable_to_non_nullable
                      as num?,
            totalWithdrawn: freezed == totalWithdrawn
                ? _value.totalWithdrawn
                : totalWithdrawn // ignore: cast_nullable_to_non_nullable
                      as num?,
            earningsSummary: freezed == earningsSummary
                ? _value.earningsSummary
                : earningsSummary // ignore: cast_nullable_to_non_nullable
                      as EarningsSummaryModel?,
            recentTransactions: freezed == recentTransactions
                ? _value.recentTransactions
                : recentTransactions // ignore: cast_nullable_to_non_nullable
                      as List<RecentTransactionModel>?,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverWalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningsSummaryModelCopyWith<$Res>? get earningsSummary {
    if (_value.earningsSummary == null) {
      return null;
    }

    return $EarningsSummaryModelCopyWith<$Res>(_value.earningsSummary!, (
      value,
    ) {
      return _then(_value.copyWith(earningsSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverWalletSummaryModelImplCopyWith<$Res>
    implements $DriverWalletSummaryModelCopyWith<$Res> {
  factory _$$DriverWalletSummaryModelImplCopyWith(
    _$DriverWalletSummaryModelImpl value,
    $Res Function(_$DriverWalletSummaryModelImpl) then,
  ) = __$$DriverWalletSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double? availableBalance,
    String? currency,
    num? totalEarned,
    num? totalWithdrawn,
    EarningsSummaryModel? earningsSummary,
    List<RecentTransactionModel>? recentTransactions,
  });

  @override
  $EarningsSummaryModelCopyWith<$Res>? get earningsSummary;
}

/// @nodoc
class __$$DriverWalletSummaryModelImplCopyWithImpl<$Res>
    extends
        _$DriverWalletSummaryModelCopyWithImpl<
          $Res,
          _$DriverWalletSummaryModelImpl
        >
    implements _$$DriverWalletSummaryModelImplCopyWith<$Res> {
  __$$DriverWalletSummaryModelImplCopyWithImpl(
    _$DriverWalletSummaryModelImpl _value,
    $Res Function(_$DriverWalletSummaryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverWalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBalance = freezed,
    Object? currency = freezed,
    Object? totalEarned = freezed,
    Object? totalWithdrawn = freezed,
    Object? earningsSummary = freezed,
    Object? recentTransactions = freezed,
  }) {
    return _then(
      _$DriverWalletSummaryModelImpl(
        availableBalance: freezed == availableBalance
            ? _value.availableBalance
            : availableBalance // ignore: cast_nullable_to_non_nullable
                  as double?,
        currency: freezed == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalEarned: freezed == totalEarned
            ? _value.totalEarned
            : totalEarned // ignore: cast_nullable_to_non_nullable
                  as num?,
        totalWithdrawn: freezed == totalWithdrawn
            ? _value.totalWithdrawn
            : totalWithdrawn // ignore: cast_nullable_to_non_nullable
                  as num?,
        earningsSummary: freezed == earningsSummary
            ? _value.earningsSummary
            : earningsSummary // ignore: cast_nullable_to_non_nullable
                  as EarningsSummaryModel?,
        recentTransactions: freezed == recentTransactions
            ? _value._recentTransactions
            : recentTransactions // ignore: cast_nullable_to_non_nullable
                  as List<RecentTransactionModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverWalletSummaryModelImpl implements _DriverWalletSummaryModel {
  const _$DriverWalletSummaryModelImpl({
    this.availableBalance,
    this.currency,
    this.totalEarned,
    this.totalWithdrawn,
    this.earningsSummary,
    final List<RecentTransactionModel>? recentTransactions,
  }) : _recentTransactions = recentTransactions;

  factory _$DriverWalletSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverWalletSummaryModelImplFromJson(json);

  @override
  final double? availableBalance;
  @override
  final String? currency;
  @override
  final num? totalEarned;
  @override
  final num? totalWithdrawn;
  @override
  final EarningsSummaryModel? earningsSummary;
  final List<RecentTransactionModel>? _recentTransactions;
  @override
  List<RecentTransactionModel>? get recentTransactions {
    final value = _recentTransactions;
    if (value == null) return null;
    if (_recentTransactions is EqualUnmodifiableListView)
      return _recentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DriverWalletSummaryModel(availableBalance: $availableBalance, currency: $currency, totalEarned: $totalEarned, totalWithdrawn: $totalWithdrawn, earningsSummary: $earningsSummary, recentTransactions: $recentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverWalletSummaryModelImpl &&
            (identical(other.availableBalance, availableBalance) ||
                other.availableBalance == availableBalance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.totalWithdrawn, totalWithdrawn) ||
                other.totalWithdrawn == totalWithdrawn) &&
            (identical(other.earningsSummary, earningsSummary) ||
                other.earningsSummary == earningsSummary) &&
            const DeepCollectionEquality().equals(
              other._recentTransactions,
              _recentTransactions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    availableBalance,
    currency,
    totalEarned,
    totalWithdrawn,
    earningsSummary,
    const DeepCollectionEquality().hash(_recentTransactions),
  );

  /// Create a copy of DriverWalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverWalletSummaryModelImplCopyWith<_$DriverWalletSummaryModelImpl>
  get copyWith =>
      __$$DriverWalletSummaryModelImplCopyWithImpl<
        _$DriverWalletSummaryModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverWalletSummaryModelImplToJson(this);
  }
}

abstract class _DriverWalletSummaryModel implements DriverWalletSummaryModel {
  const factory _DriverWalletSummaryModel({
    final double? availableBalance,
    final String? currency,
    final num? totalEarned,
    final num? totalWithdrawn,
    final EarningsSummaryModel? earningsSummary,
    final List<RecentTransactionModel>? recentTransactions,
  }) = _$DriverWalletSummaryModelImpl;

  factory _DriverWalletSummaryModel.fromJson(Map<String, dynamic> json) =
      _$DriverWalletSummaryModelImpl.fromJson;

  @override
  double? get availableBalance;
  @override
  String? get currency;
  @override
  num? get totalEarned;
  @override
  num? get totalWithdrawn;
  @override
  EarningsSummaryModel? get earningsSummary;
  @override
  List<RecentTransactionModel>? get recentTransactions;

  /// Create a copy of DriverWalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverWalletSummaryModelImplCopyWith<_$DriverWalletSummaryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

EarningsSummaryModel _$EarningsSummaryModelFromJson(Map<String, dynamic> json) {
  return _EarningsSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$EarningsSummaryModel {
  EarningPeriodModel? get today => throw _privateConstructorUsedError;
  EarningPeriodModel? get thisWeek => throw _privateConstructorUsedError;
  EarningPeriodModel? get thisMonth => throw _privateConstructorUsedError;

  /// Serializes this EarningsSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningsSummaryModelCopyWith<EarningsSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsSummaryModelCopyWith<$Res> {
  factory $EarningsSummaryModelCopyWith(
    EarningsSummaryModel value,
    $Res Function(EarningsSummaryModel) then,
  ) = _$EarningsSummaryModelCopyWithImpl<$Res, EarningsSummaryModel>;
  @useResult
  $Res call({
    EarningPeriodModel? today,
    EarningPeriodModel? thisWeek,
    EarningPeriodModel? thisMonth,
  });

  $EarningPeriodModelCopyWith<$Res>? get today;
  $EarningPeriodModelCopyWith<$Res>? get thisWeek;
  $EarningPeriodModelCopyWith<$Res>? get thisMonth;
}

/// @nodoc
class _$EarningsSummaryModelCopyWithImpl<
  $Res,
  $Val extends EarningsSummaryModel
>
    implements $EarningsSummaryModelCopyWith<$Res> {
  _$EarningsSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = freezed,
    Object? thisWeek = freezed,
    Object? thisMonth = freezed,
  }) {
    return _then(
      _value.copyWith(
            today: freezed == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                      as EarningPeriodModel?,
            thisWeek: freezed == thisWeek
                ? _value.thisWeek
                : thisWeek // ignore: cast_nullable_to_non_nullable
                      as EarningPeriodModel?,
            thisMonth: freezed == thisMonth
                ? _value.thisMonth
                : thisMonth // ignore: cast_nullable_to_non_nullable
                      as EarningPeriodModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningPeriodModelCopyWith<$Res>? get today {
    if (_value.today == null) {
      return null;
    }

    return $EarningPeriodModelCopyWith<$Res>(_value.today!, (value) {
      return _then(_value.copyWith(today: value) as $Val);
    });
  }

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningPeriodModelCopyWith<$Res>? get thisWeek {
    if (_value.thisWeek == null) {
      return null;
    }

    return $EarningPeriodModelCopyWith<$Res>(_value.thisWeek!, (value) {
      return _then(_value.copyWith(thisWeek: value) as $Val);
    });
  }

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningPeriodModelCopyWith<$Res>? get thisMonth {
    if (_value.thisMonth == null) {
      return null;
    }

    return $EarningPeriodModelCopyWith<$Res>(_value.thisMonth!, (value) {
      return _then(_value.copyWith(thisMonth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarningsSummaryModelImplCopyWith<$Res>
    implements $EarningsSummaryModelCopyWith<$Res> {
  factory _$$EarningsSummaryModelImplCopyWith(
    _$EarningsSummaryModelImpl value,
    $Res Function(_$EarningsSummaryModelImpl) then,
  ) = __$$EarningsSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    EarningPeriodModel? today,
    EarningPeriodModel? thisWeek,
    EarningPeriodModel? thisMonth,
  });

  @override
  $EarningPeriodModelCopyWith<$Res>? get today;
  @override
  $EarningPeriodModelCopyWith<$Res>? get thisWeek;
  @override
  $EarningPeriodModelCopyWith<$Res>? get thisMonth;
}

/// @nodoc
class __$$EarningsSummaryModelImplCopyWithImpl<$Res>
    extends _$EarningsSummaryModelCopyWithImpl<$Res, _$EarningsSummaryModelImpl>
    implements _$$EarningsSummaryModelImplCopyWith<$Res> {
  __$$EarningsSummaryModelImplCopyWithImpl(
    _$EarningsSummaryModelImpl _value,
    $Res Function(_$EarningsSummaryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = freezed,
    Object? thisWeek = freezed,
    Object? thisMonth = freezed,
  }) {
    return _then(
      _$EarningsSummaryModelImpl(
        today: freezed == today
            ? _value.today
            : today // ignore: cast_nullable_to_non_nullable
                  as EarningPeriodModel?,
        thisWeek: freezed == thisWeek
            ? _value.thisWeek
            : thisWeek // ignore: cast_nullable_to_non_nullable
                  as EarningPeriodModel?,
        thisMonth: freezed == thisMonth
            ? _value.thisMonth
            : thisMonth // ignore: cast_nullable_to_non_nullable
                  as EarningPeriodModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningsSummaryModelImpl implements _EarningsSummaryModel {
  const _$EarningsSummaryModelImpl({this.today, this.thisWeek, this.thisMonth});

  factory _$EarningsSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningsSummaryModelImplFromJson(json);

  @override
  final EarningPeriodModel? today;
  @override
  final EarningPeriodModel? thisWeek;
  @override
  final EarningPeriodModel? thisMonth;

  @override
  String toString() {
    return 'EarningsSummaryModel(today: $today, thisWeek: $thisWeek, thisMonth: $thisMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsSummaryModelImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.thisWeek, thisWeek) ||
                other.thisWeek == thisWeek) &&
            (identical(other.thisMonth, thisMonth) ||
                other.thisMonth == thisMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, today, thisWeek, thisMonth);

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsSummaryModelImplCopyWith<_$EarningsSummaryModelImpl>
  get copyWith =>
      __$$EarningsSummaryModelImplCopyWithImpl<_$EarningsSummaryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningsSummaryModelImplToJson(this);
  }
}

abstract class _EarningsSummaryModel implements EarningsSummaryModel {
  const factory _EarningsSummaryModel({
    final EarningPeriodModel? today,
    final EarningPeriodModel? thisWeek,
    final EarningPeriodModel? thisMonth,
  }) = _$EarningsSummaryModelImpl;

  factory _EarningsSummaryModel.fromJson(Map<String, dynamic> json) =
      _$EarningsSummaryModelImpl.fromJson;

  @override
  EarningPeriodModel? get today;
  @override
  EarningPeriodModel? get thisWeek;
  @override
  EarningPeriodModel? get thisMonth;

  /// Create a copy of EarningsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningsSummaryModelImplCopyWith<_$EarningsSummaryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

EarningPeriodModel _$EarningPeriodModelFromJson(Map<String, dynamic> json) {
  return _EarningPeriodModel.fromJson(json);
}

/// @nodoc
mixin _$EarningPeriodModel {
  num? get amount => throw _privateConstructorUsedError;
  int? get tripsCount => throw _privateConstructorUsedError;

  /// Serializes this EarningPeriodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningPeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningPeriodModelCopyWith<EarningPeriodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningPeriodModelCopyWith<$Res> {
  factory $EarningPeriodModelCopyWith(
    EarningPeriodModel value,
    $Res Function(EarningPeriodModel) then,
  ) = _$EarningPeriodModelCopyWithImpl<$Res, EarningPeriodModel>;
  @useResult
  $Res call({num? amount, int? tripsCount});
}

/// @nodoc
class _$EarningPeriodModelCopyWithImpl<$Res, $Val extends EarningPeriodModel>
    implements $EarningPeriodModelCopyWith<$Res> {
  _$EarningPeriodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningPeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = freezed, Object? tripsCount = freezed}) {
    return _then(
      _value.copyWith(
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as num?,
            tripsCount: freezed == tripsCount
                ? _value.tripsCount
                : tripsCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EarningPeriodModelImplCopyWith<$Res>
    implements $EarningPeriodModelCopyWith<$Res> {
  factory _$$EarningPeriodModelImplCopyWith(
    _$EarningPeriodModelImpl value,
    $Res Function(_$EarningPeriodModelImpl) then,
  ) = __$$EarningPeriodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? amount, int? tripsCount});
}

/// @nodoc
class __$$EarningPeriodModelImplCopyWithImpl<$Res>
    extends _$EarningPeriodModelCopyWithImpl<$Res, _$EarningPeriodModelImpl>
    implements _$$EarningPeriodModelImplCopyWith<$Res> {
  __$$EarningPeriodModelImplCopyWithImpl(
    _$EarningPeriodModelImpl _value,
    $Res Function(_$EarningPeriodModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningPeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = freezed, Object? tripsCount = freezed}) {
    return _then(
      _$EarningPeriodModelImpl(
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as num?,
        tripsCount: freezed == tripsCount
            ? _value.tripsCount
            : tripsCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningPeriodModelImpl implements _EarningPeriodModel {
  const _$EarningPeriodModelImpl({this.amount, this.tripsCount});

  factory _$EarningPeriodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningPeriodModelImplFromJson(json);

  @override
  final num? amount;
  @override
  final int? tripsCount;

  @override
  String toString() {
    return 'EarningPeriodModel(amount: $amount, tripsCount: $tripsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningPeriodModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tripsCount, tripsCount) ||
                other.tripsCount == tripsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, tripsCount);

  /// Create a copy of EarningPeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningPeriodModelImplCopyWith<_$EarningPeriodModelImpl> get copyWith =>
      __$$EarningPeriodModelImplCopyWithImpl<_$EarningPeriodModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningPeriodModelImplToJson(this);
  }
}

abstract class _EarningPeriodModel implements EarningPeriodModel {
  const factory _EarningPeriodModel({
    final num? amount,
    final int? tripsCount,
  }) = _$EarningPeriodModelImpl;

  factory _EarningPeriodModel.fromJson(Map<String, dynamic> json) =
      _$EarningPeriodModelImpl.fromJson;

  @override
  num? get amount;
  @override
  int? get tripsCount;

  /// Create a copy of EarningPeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningPeriodModelImplCopyWith<_$EarningPeriodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentTransactionModel _$RecentTransactionModelFromJson(
  Map<String, dynamic> json,
) {
  return _RecentTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$RecentTransactionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get formattedAmount => throw _privateConstructorUsedError;
  bool? get isPositive => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get tripId => throw _privateConstructorUsedError;

  /// Serializes this RecentTransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentTransactionModelCopyWith<RecentTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentTransactionModelCopyWith<$Res> {
  factory $RecentTransactionModelCopyWith(
    RecentTransactionModel value,
    $Res Function(RecentTransactionModel) then,
  ) = _$RecentTransactionModelCopyWithImpl<$Res, RecentTransactionModel>;
  @useResult
  $Res call({
    int? id,
    String? title,
    String? subtitle,
    String? createdAt,
    num? amount,
    String? formattedAmount,
    bool? isPositive,
    String? type,
    int? tripId,
  });
}

/// @nodoc
class _$RecentTransactionModelCopyWithImpl<
  $Res,
  $Val extends RecentTransactionModel
>
    implements $RecentTransactionModelCopyWith<$Res> {
  _$RecentTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? createdAt = freezed,
    Object? amount = freezed,
    Object? formattedAmount = freezed,
    Object? isPositive = freezed,
    Object? type = freezed,
    Object? tripId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            subtitle: freezed == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as num?,
            formattedAmount: freezed == formattedAmount
                ? _value.formattedAmount
                : formattedAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPositive: freezed == isPositive
                ? _value.isPositive
                : isPositive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            tripId: freezed == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecentTransactionModelImplCopyWith<$Res>
    implements $RecentTransactionModelCopyWith<$Res> {
  factory _$$RecentTransactionModelImplCopyWith(
    _$RecentTransactionModelImpl value,
    $Res Function(_$RecentTransactionModelImpl) then,
  ) = __$$RecentTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? title,
    String? subtitle,
    String? createdAt,
    num? amount,
    String? formattedAmount,
    bool? isPositive,
    String? type,
    int? tripId,
  });
}

/// @nodoc
class __$$RecentTransactionModelImplCopyWithImpl<$Res>
    extends
        _$RecentTransactionModelCopyWithImpl<$Res, _$RecentTransactionModelImpl>
    implements _$$RecentTransactionModelImplCopyWith<$Res> {
  __$$RecentTransactionModelImplCopyWithImpl(
    _$RecentTransactionModelImpl _value,
    $Res Function(_$RecentTransactionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecentTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? createdAt = freezed,
    Object? amount = freezed,
    Object? formattedAmount = freezed,
    Object? isPositive = freezed,
    Object? type = freezed,
    Object? tripId = freezed,
  }) {
    return _then(
      _$RecentTransactionModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        subtitle: freezed == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as num?,
        formattedAmount: freezed == formattedAmount
            ? _value.formattedAmount
            : formattedAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPositive: freezed == isPositive
            ? _value.isPositive
            : isPositive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        tripId: freezed == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentTransactionModelImpl implements _RecentTransactionModel {
  const _$RecentTransactionModelImpl({
    this.id,
    this.title,
    this.subtitle,
    this.createdAt,
    this.amount,
    this.formattedAmount,
    this.isPositive,
    this.type,
    this.tripId,
  });

  factory _$RecentTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentTransactionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? createdAt;
  @override
  final num? amount;
  @override
  final String? formattedAmount;
  @override
  final bool? isPositive;
  @override
  final String? type;
  @override
  final int? tripId;

  @override
  String toString() {
    return 'RecentTransactionModel(id: $id, title: $title, subtitle: $subtitle, createdAt: $createdAt, amount: $amount, formattedAmount: $formattedAmount, isPositive: $isPositive, type: $type, tripId: $tripId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.formattedAmount, formattedAmount) ||
                other.formattedAmount == formattedAmount) &&
            (identical(other.isPositive, isPositive) ||
                other.isPositive == isPositive) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tripId, tripId) || other.tripId == tripId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    subtitle,
    createdAt,
    amount,
    formattedAmount,
    isPositive,
    type,
    tripId,
  );

  /// Create a copy of RecentTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentTransactionModelImplCopyWith<_$RecentTransactionModelImpl>
  get copyWith =>
      __$$RecentTransactionModelImplCopyWithImpl<_$RecentTransactionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentTransactionModelImplToJson(this);
  }
}

abstract class _RecentTransactionModel implements RecentTransactionModel {
  const factory _RecentTransactionModel({
    final int? id,
    final String? title,
    final String? subtitle,
    final String? createdAt,
    final num? amount,
    final String? formattedAmount,
    final bool? isPositive,
    final String? type,
    final int? tripId,
  }) = _$RecentTransactionModelImpl;

  factory _RecentTransactionModel.fromJson(Map<String, dynamic> json) =
      _$RecentTransactionModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get createdAt;
  @override
  num? get amount;
  @override
  String? get formattedAmount;
  @override
  bool? get isPositive;
  @override
  String? get type;
  @override
  int? get tripId;

  /// Create a copy of RecentTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentTransactionModelImplCopyWith<_$RecentTransactionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
