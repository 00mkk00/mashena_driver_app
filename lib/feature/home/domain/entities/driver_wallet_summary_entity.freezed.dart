// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_wallet_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverWalletSummaryEntity {
  double get availableBalance => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  num get totalEarned => throw _privateConstructorUsedError;
  num get totalWithdrawn => throw _privateConstructorUsedError;
  EarningsSummaryEntity get earningsSummary =>
      throw _privateConstructorUsedError;
  List<RecentTransactionEntity> get recentTransactions =>
      throw _privateConstructorUsedError;

  /// Create a copy of DriverWalletSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverWalletSummaryEntityCopyWith<DriverWalletSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverWalletSummaryEntityCopyWith<$Res> {
  factory $DriverWalletSummaryEntityCopyWith(
    DriverWalletSummaryEntity value,
    $Res Function(DriverWalletSummaryEntity) then,
  ) = _$DriverWalletSummaryEntityCopyWithImpl<$Res, DriverWalletSummaryEntity>;
  @useResult
  $Res call({
    double availableBalance,
    String currency,
    num totalEarned,
    num totalWithdrawn,
    EarningsSummaryEntity earningsSummary,
    List<RecentTransactionEntity> recentTransactions,
  });

  $EarningsSummaryEntityCopyWith<$Res> get earningsSummary;
}

/// @nodoc
class _$DriverWalletSummaryEntityCopyWithImpl<
  $Res,
  $Val extends DriverWalletSummaryEntity
>
    implements $DriverWalletSummaryEntityCopyWith<$Res> {
  _$DriverWalletSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverWalletSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBalance = null,
    Object? currency = null,
    Object? totalEarned = null,
    Object? totalWithdrawn = null,
    Object? earningsSummary = null,
    Object? recentTransactions = null,
  }) {
    return _then(
      _value.copyWith(
            availableBalance: null == availableBalance
                ? _value.availableBalance
                : availableBalance // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            totalEarned: null == totalEarned
                ? _value.totalEarned
                : totalEarned // ignore: cast_nullable_to_non_nullable
                      as num,
            totalWithdrawn: null == totalWithdrawn
                ? _value.totalWithdrawn
                : totalWithdrawn // ignore: cast_nullable_to_non_nullable
                      as num,
            earningsSummary: null == earningsSummary
                ? _value.earningsSummary
                : earningsSummary // ignore: cast_nullable_to_non_nullable
                      as EarningsSummaryEntity,
            recentTransactions: null == recentTransactions
                ? _value.recentTransactions
                : recentTransactions // ignore: cast_nullable_to_non_nullable
                      as List<RecentTransactionEntity>,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverWalletSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningsSummaryEntityCopyWith<$Res> get earningsSummary {
    return $EarningsSummaryEntityCopyWith<$Res>(_value.earningsSummary, (
      value,
    ) {
      return _then(_value.copyWith(earningsSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverWalletSummaryEntityImplCopyWith<$Res>
    implements $DriverWalletSummaryEntityCopyWith<$Res> {
  factory _$$DriverWalletSummaryEntityImplCopyWith(
    _$DriverWalletSummaryEntityImpl value,
    $Res Function(_$DriverWalletSummaryEntityImpl) then,
  ) = __$$DriverWalletSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double availableBalance,
    String currency,
    num totalEarned,
    num totalWithdrawn,
    EarningsSummaryEntity earningsSummary,
    List<RecentTransactionEntity> recentTransactions,
  });

  @override
  $EarningsSummaryEntityCopyWith<$Res> get earningsSummary;
}

/// @nodoc
class __$$DriverWalletSummaryEntityImplCopyWithImpl<$Res>
    extends
        _$DriverWalletSummaryEntityCopyWithImpl<
          $Res,
          _$DriverWalletSummaryEntityImpl
        >
    implements _$$DriverWalletSummaryEntityImplCopyWith<$Res> {
  __$$DriverWalletSummaryEntityImplCopyWithImpl(
    _$DriverWalletSummaryEntityImpl _value,
    $Res Function(_$DriverWalletSummaryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverWalletSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBalance = null,
    Object? currency = null,
    Object? totalEarned = null,
    Object? totalWithdrawn = null,
    Object? earningsSummary = null,
    Object? recentTransactions = null,
  }) {
    return _then(
      _$DriverWalletSummaryEntityImpl(
        availableBalance: null == availableBalance
            ? _value.availableBalance
            : availableBalance // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        totalEarned: null == totalEarned
            ? _value.totalEarned
            : totalEarned // ignore: cast_nullable_to_non_nullable
                  as num,
        totalWithdrawn: null == totalWithdrawn
            ? _value.totalWithdrawn
            : totalWithdrawn // ignore: cast_nullable_to_non_nullable
                  as num,
        earningsSummary: null == earningsSummary
            ? _value.earningsSummary
            : earningsSummary // ignore: cast_nullable_to_non_nullable
                  as EarningsSummaryEntity,
        recentTransactions: null == recentTransactions
            ? _value._recentTransactions
            : recentTransactions // ignore: cast_nullable_to_non_nullable
                  as List<RecentTransactionEntity>,
      ),
    );
  }
}

/// @nodoc

class _$DriverWalletSummaryEntityImpl implements _DriverWalletSummaryEntity {
  const _$DriverWalletSummaryEntityImpl({
    required this.availableBalance,
    required this.currency,
    required this.totalEarned,
    required this.totalWithdrawn,
    required this.earningsSummary,
    required final List<RecentTransactionEntity> recentTransactions,
  }) : _recentTransactions = recentTransactions;

  @override
  final double availableBalance;
  @override
  final String currency;
  @override
  final num totalEarned;
  @override
  final num totalWithdrawn;
  @override
  final EarningsSummaryEntity earningsSummary;
  final List<RecentTransactionEntity> _recentTransactions;
  @override
  List<RecentTransactionEntity> get recentTransactions {
    if (_recentTransactions is EqualUnmodifiableListView)
      return _recentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTransactions);
  }

  @override
  String toString() {
    return 'DriverWalletSummaryEntity(availableBalance: $availableBalance, currency: $currency, totalEarned: $totalEarned, totalWithdrawn: $totalWithdrawn, earningsSummary: $earningsSummary, recentTransactions: $recentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverWalletSummaryEntityImpl &&
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

  /// Create a copy of DriverWalletSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverWalletSummaryEntityImplCopyWith<_$DriverWalletSummaryEntityImpl>
  get copyWith =>
      __$$DriverWalletSummaryEntityImplCopyWithImpl<
        _$DriverWalletSummaryEntityImpl
      >(this, _$identity);
}

abstract class _DriverWalletSummaryEntity implements DriverWalletSummaryEntity {
  const factory _DriverWalletSummaryEntity({
    required final double availableBalance,
    required final String currency,
    required final num totalEarned,
    required final num totalWithdrawn,
    required final EarningsSummaryEntity earningsSummary,
    required final List<RecentTransactionEntity> recentTransactions,
  }) = _$DriverWalletSummaryEntityImpl;

  @override
  double get availableBalance;
  @override
  String get currency;
  @override
  num get totalEarned;
  @override
  num get totalWithdrawn;
  @override
  EarningsSummaryEntity get earningsSummary;
  @override
  List<RecentTransactionEntity> get recentTransactions;

  /// Create a copy of DriverWalletSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverWalletSummaryEntityImplCopyWith<_$DriverWalletSummaryEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EarningsSummaryEntity {
  EarningPeriodEntity get today => throw _privateConstructorUsedError;
  EarningPeriodEntity get thisWeek => throw _privateConstructorUsedError;
  EarningPeriodEntity get thisMonth => throw _privateConstructorUsedError;

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningsSummaryEntityCopyWith<EarningsSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsSummaryEntityCopyWith<$Res> {
  factory $EarningsSummaryEntityCopyWith(
    EarningsSummaryEntity value,
    $Res Function(EarningsSummaryEntity) then,
  ) = _$EarningsSummaryEntityCopyWithImpl<$Res, EarningsSummaryEntity>;
  @useResult
  $Res call({
    EarningPeriodEntity today,
    EarningPeriodEntity thisWeek,
    EarningPeriodEntity thisMonth,
  });

  $EarningPeriodEntityCopyWith<$Res> get today;
  $EarningPeriodEntityCopyWith<$Res> get thisWeek;
  $EarningPeriodEntityCopyWith<$Res> get thisMonth;
}

/// @nodoc
class _$EarningsSummaryEntityCopyWithImpl<
  $Res,
  $Val extends EarningsSummaryEntity
>
    implements $EarningsSummaryEntityCopyWith<$Res> {
  _$EarningsSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? thisWeek = null,
    Object? thisMonth = null,
  }) {
    return _then(
      _value.copyWith(
            today: null == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                      as EarningPeriodEntity,
            thisWeek: null == thisWeek
                ? _value.thisWeek
                : thisWeek // ignore: cast_nullable_to_non_nullable
                      as EarningPeriodEntity,
            thisMonth: null == thisMonth
                ? _value.thisMonth
                : thisMonth // ignore: cast_nullable_to_non_nullable
                      as EarningPeriodEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningPeriodEntityCopyWith<$Res> get today {
    return $EarningPeriodEntityCopyWith<$Res>(_value.today, (value) {
      return _then(_value.copyWith(today: value) as $Val);
    });
  }

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningPeriodEntityCopyWith<$Res> get thisWeek {
    return $EarningPeriodEntityCopyWith<$Res>(_value.thisWeek, (value) {
      return _then(_value.copyWith(thisWeek: value) as $Val);
    });
  }

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningPeriodEntityCopyWith<$Res> get thisMonth {
    return $EarningPeriodEntityCopyWith<$Res>(_value.thisMonth, (value) {
      return _then(_value.copyWith(thisMonth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarningsSummaryEntityImplCopyWith<$Res>
    implements $EarningsSummaryEntityCopyWith<$Res> {
  factory _$$EarningsSummaryEntityImplCopyWith(
    _$EarningsSummaryEntityImpl value,
    $Res Function(_$EarningsSummaryEntityImpl) then,
  ) = __$$EarningsSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    EarningPeriodEntity today,
    EarningPeriodEntity thisWeek,
    EarningPeriodEntity thisMonth,
  });

  @override
  $EarningPeriodEntityCopyWith<$Res> get today;
  @override
  $EarningPeriodEntityCopyWith<$Res> get thisWeek;
  @override
  $EarningPeriodEntityCopyWith<$Res> get thisMonth;
}

/// @nodoc
class __$$EarningsSummaryEntityImplCopyWithImpl<$Res>
    extends
        _$EarningsSummaryEntityCopyWithImpl<$Res, _$EarningsSummaryEntityImpl>
    implements _$$EarningsSummaryEntityImplCopyWith<$Res> {
  __$$EarningsSummaryEntityImplCopyWithImpl(
    _$EarningsSummaryEntityImpl _value,
    $Res Function(_$EarningsSummaryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? thisWeek = null,
    Object? thisMonth = null,
  }) {
    return _then(
      _$EarningsSummaryEntityImpl(
        today: null == today
            ? _value.today
            : today // ignore: cast_nullable_to_non_nullable
                  as EarningPeriodEntity,
        thisWeek: null == thisWeek
            ? _value.thisWeek
            : thisWeek // ignore: cast_nullable_to_non_nullable
                  as EarningPeriodEntity,
        thisMonth: null == thisMonth
            ? _value.thisMonth
            : thisMonth // ignore: cast_nullable_to_non_nullable
                  as EarningPeriodEntity,
      ),
    );
  }
}

/// @nodoc

class _$EarningsSummaryEntityImpl implements _EarningsSummaryEntity {
  const _$EarningsSummaryEntityImpl({
    required this.today,
    required this.thisWeek,
    required this.thisMonth,
  });

  @override
  final EarningPeriodEntity today;
  @override
  final EarningPeriodEntity thisWeek;
  @override
  final EarningPeriodEntity thisMonth;

  @override
  String toString() {
    return 'EarningsSummaryEntity(today: $today, thisWeek: $thisWeek, thisMonth: $thisMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsSummaryEntityImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.thisWeek, thisWeek) ||
                other.thisWeek == thisWeek) &&
            (identical(other.thisMonth, thisMonth) ||
                other.thisMonth == thisMonth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, today, thisWeek, thisMonth);

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsSummaryEntityImplCopyWith<_$EarningsSummaryEntityImpl>
  get copyWith =>
      __$$EarningsSummaryEntityImplCopyWithImpl<_$EarningsSummaryEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _EarningsSummaryEntity implements EarningsSummaryEntity {
  const factory _EarningsSummaryEntity({
    required final EarningPeriodEntity today,
    required final EarningPeriodEntity thisWeek,
    required final EarningPeriodEntity thisMonth,
  }) = _$EarningsSummaryEntityImpl;

  @override
  EarningPeriodEntity get today;
  @override
  EarningPeriodEntity get thisWeek;
  @override
  EarningPeriodEntity get thisMonth;

  /// Create a copy of EarningsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningsSummaryEntityImplCopyWith<_$EarningsSummaryEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EarningPeriodEntity {
  num get amount => throw _privateConstructorUsedError;
  int get tripsCount => throw _privateConstructorUsedError;

  /// Create a copy of EarningPeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningPeriodEntityCopyWith<EarningPeriodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningPeriodEntityCopyWith<$Res> {
  factory $EarningPeriodEntityCopyWith(
    EarningPeriodEntity value,
    $Res Function(EarningPeriodEntity) then,
  ) = _$EarningPeriodEntityCopyWithImpl<$Res, EarningPeriodEntity>;
  @useResult
  $Res call({num amount, int tripsCount});
}

/// @nodoc
class _$EarningPeriodEntityCopyWithImpl<$Res, $Val extends EarningPeriodEntity>
    implements $EarningPeriodEntityCopyWith<$Res> {
  _$EarningPeriodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningPeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? tripsCount = null}) {
    return _then(
      _value.copyWith(
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as num,
            tripsCount: null == tripsCount
                ? _value.tripsCount
                : tripsCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EarningPeriodEntityImplCopyWith<$Res>
    implements $EarningPeriodEntityCopyWith<$Res> {
  factory _$$EarningPeriodEntityImplCopyWith(
    _$EarningPeriodEntityImpl value,
    $Res Function(_$EarningPeriodEntityImpl) then,
  ) = __$$EarningPeriodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, int tripsCount});
}

/// @nodoc
class __$$EarningPeriodEntityImplCopyWithImpl<$Res>
    extends _$EarningPeriodEntityCopyWithImpl<$Res, _$EarningPeriodEntityImpl>
    implements _$$EarningPeriodEntityImplCopyWith<$Res> {
  __$$EarningPeriodEntityImplCopyWithImpl(
    _$EarningPeriodEntityImpl _value,
    $Res Function(_$EarningPeriodEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningPeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? tripsCount = null}) {
    return _then(
      _$EarningPeriodEntityImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as num,
        tripsCount: null == tripsCount
            ? _value.tripsCount
            : tripsCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$EarningPeriodEntityImpl implements _EarningPeriodEntity {
  const _$EarningPeriodEntityImpl({
    required this.amount,
    required this.tripsCount,
  });

  @override
  final num amount;
  @override
  final int tripsCount;

  @override
  String toString() {
    return 'EarningPeriodEntity(amount: $amount, tripsCount: $tripsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningPeriodEntityImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tripsCount, tripsCount) ||
                other.tripsCount == tripsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, tripsCount);

  /// Create a copy of EarningPeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningPeriodEntityImplCopyWith<_$EarningPeriodEntityImpl> get copyWith =>
      __$$EarningPeriodEntityImplCopyWithImpl<_$EarningPeriodEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _EarningPeriodEntity implements EarningPeriodEntity {
  const factory _EarningPeriodEntity({
    required final num amount,
    required final int tripsCount,
  }) = _$EarningPeriodEntityImpl;

  @override
  num get amount;
  @override
  int get tripsCount;

  /// Create a copy of EarningPeriodEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningPeriodEntityImplCopyWith<_$EarningPeriodEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentTransactionEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  String get formattedAmount => throw _privateConstructorUsedError;
  bool get isPositive => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;

  /// Create a copy of RecentTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentTransactionEntityCopyWith<RecentTransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentTransactionEntityCopyWith<$Res> {
  factory $RecentTransactionEntityCopyWith(
    RecentTransactionEntity value,
    $Res Function(RecentTransactionEntity) then,
  ) = _$RecentTransactionEntityCopyWithImpl<$Res, RecentTransactionEntity>;
  @useResult
  $Res call({
    int id,
    String title,
    String subtitle,
    String createdAt,
    num amount,
    String formattedAmount,
    bool isPositive,
    String type,
    int tripId,
  });
}

/// @nodoc
class _$RecentTransactionEntityCopyWithImpl<
  $Res,
  $Val extends RecentTransactionEntity
>
    implements $RecentTransactionEntityCopyWith<$Res> {
  _$RecentTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? createdAt = null,
    Object? amount = null,
    Object? formattedAmount = null,
    Object? isPositive = null,
    Object? type = null,
    Object? tripId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            subtitle: null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as num,
            formattedAmount: null == formattedAmount
                ? _value.formattedAmount
                : formattedAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            isPositive: null == isPositive
                ? _value.isPositive
                : isPositive // ignore: cast_nullable_to_non_nullable
                      as bool,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            tripId: null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecentTransactionEntityImplCopyWith<$Res>
    implements $RecentTransactionEntityCopyWith<$Res> {
  factory _$$RecentTransactionEntityImplCopyWith(
    _$RecentTransactionEntityImpl value,
    $Res Function(_$RecentTransactionEntityImpl) then,
  ) = __$$RecentTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String subtitle,
    String createdAt,
    num amount,
    String formattedAmount,
    bool isPositive,
    String type,
    int tripId,
  });
}

/// @nodoc
class __$$RecentTransactionEntityImplCopyWithImpl<$Res>
    extends
        _$RecentTransactionEntityCopyWithImpl<
          $Res,
          _$RecentTransactionEntityImpl
        >
    implements _$$RecentTransactionEntityImplCopyWith<$Res> {
  __$$RecentTransactionEntityImplCopyWithImpl(
    _$RecentTransactionEntityImpl _value,
    $Res Function(_$RecentTransactionEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecentTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? createdAt = null,
    Object? amount = null,
    Object? formattedAmount = null,
    Object? isPositive = null,
    Object? type = null,
    Object? tripId = null,
  }) {
    return _then(
      _$RecentTransactionEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: null == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as num,
        formattedAmount: null == formattedAmount
            ? _value.formattedAmount
            : formattedAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        isPositive: null == isPositive
            ? _value.isPositive
            : isPositive // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        tripId: null == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RecentTransactionEntityImpl implements _RecentTransactionEntity {
  const _$RecentTransactionEntityImpl({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.createdAt,
    required this.amount,
    required this.formattedAmount,
    required this.isPositive,
    required this.type,
    required this.tripId,
  });

  @override
  final int id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String createdAt;
  @override
  final num amount;
  @override
  final String formattedAmount;
  @override
  final bool isPositive;
  @override
  final String type;
  @override
  final int tripId;

  @override
  String toString() {
    return 'RecentTransactionEntity(id: $id, title: $title, subtitle: $subtitle, createdAt: $createdAt, amount: $amount, formattedAmount: $formattedAmount, isPositive: $isPositive, type: $type, tripId: $tripId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentTransactionEntityImpl &&
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

  /// Create a copy of RecentTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentTransactionEntityImplCopyWith<_$RecentTransactionEntityImpl>
  get copyWith =>
      __$$RecentTransactionEntityImplCopyWithImpl<
        _$RecentTransactionEntityImpl
      >(this, _$identity);
}

abstract class _RecentTransactionEntity implements RecentTransactionEntity {
  const factory _RecentTransactionEntity({
    required final int id,
    required final String title,
    required final String subtitle,
    required final String createdAt,
    required final num amount,
    required final String formattedAmount,
    required final bool isPositive,
    required final String type,
    required final int tripId,
  }) = _$RecentTransactionEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get createdAt;
  @override
  num get amount;
  @override
  String get formattedAmount;
  @override
  bool get isPositive;
  @override
  String get type;
  @override
  int get tripId;

  /// Create a copy of RecentTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentTransactionEntityImplCopyWith<_$RecentTransactionEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
