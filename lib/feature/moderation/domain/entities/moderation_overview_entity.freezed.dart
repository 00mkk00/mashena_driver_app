// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_overview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModerationOverviewEntity {
  int get userId => throw _privateConstructorUsedError;
  AccountStatus get accountStatus => throw _privateConstructorUsedError;
  int get warningCount => throw _privateConstructorUsedError;
  int get totalViolationsCount => throw _privateConstructorUsedError;
  List<PenaltyEntity> get activePenalties => throw _privateConstructorUsedError;
  List<RestrictionEntity> get activeRestrictions =>
      throw _privateConstructorUsedError;
  List<ViolationEntity> get recentViolations =>
      throw _privateConstructorUsedError;
  List<AppealEntity> get activeAppeals => throw _privateConstructorUsedError;

  /// Create a copy of ModerationOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationOverviewEntityCopyWith<ModerationOverviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationOverviewEntityCopyWith<$Res> {
  factory $ModerationOverviewEntityCopyWith(
    ModerationOverviewEntity value,
    $Res Function(ModerationOverviewEntity) then,
  ) = _$ModerationOverviewEntityCopyWithImpl<$Res, ModerationOverviewEntity>;
  @useResult
  $Res call({
    int userId,
    AccountStatus accountStatus,
    int warningCount,
    int totalViolationsCount,
    List<PenaltyEntity> activePenalties,
    List<RestrictionEntity> activeRestrictions,
    List<ViolationEntity> recentViolations,
    List<AppealEntity> activeAppeals,
  });
}

/// @nodoc
class _$ModerationOverviewEntityCopyWithImpl<
  $Res,
  $Val extends ModerationOverviewEntity
>
    implements $ModerationOverviewEntityCopyWith<$Res> {
  _$ModerationOverviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accountStatus = null,
    Object? warningCount = null,
    Object? totalViolationsCount = null,
    Object? activePenalties = null,
    Object? activeRestrictions = null,
    Object? recentViolations = null,
    Object? activeAppeals = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            accountStatus: null == accountStatus
                ? _value.accountStatus
                : accountStatus // ignore: cast_nullable_to_non_nullable
                      as AccountStatus,
            warningCount: null == warningCount
                ? _value.warningCount
                : warningCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalViolationsCount: null == totalViolationsCount
                ? _value.totalViolationsCount
                : totalViolationsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            activePenalties: null == activePenalties
                ? _value.activePenalties
                : activePenalties // ignore: cast_nullable_to_non_nullable
                      as List<PenaltyEntity>,
            activeRestrictions: null == activeRestrictions
                ? _value.activeRestrictions
                : activeRestrictions // ignore: cast_nullable_to_non_nullable
                      as List<RestrictionEntity>,
            recentViolations: null == recentViolations
                ? _value.recentViolations
                : recentViolations // ignore: cast_nullable_to_non_nullable
                      as List<ViolationEntity>,
            activeAppeals: null == activeAppeals
                ? _value.activeAppeals
                : activeAppeals // ignore: cast_nullable_to_non_nullable
                      as List<AppealEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModerationOverviewEntityImplCopyWith<$Res>
    implements $ModerationOverviewEntityCopyWith<$Res> {
  factory _$$ModerationOverviewEntityImplCopyWith(
    _$ModerationOverviewEntityImpl value,
    $Res Function(_$ModerationOverviewEntityImpl) then,
  ) = __$$ModerationOverviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int userId,
    AccountStatus accountStatus,
    int warningCount,
    int totalViolationsCount,
    List<PenaltyEntity> activePenalties,
    List<RestrictionEntity> activeRestrictions,
    List<ViolationEntity> recentViolations,
    List<AppealEntity> activeAppeals,
  });
}

/// @nodoc
class __$$ModerationOverviewEntityImplCopyWithImpl<$Res>
    extends
        _$ModerationOverviewEntityCopyWithImpl<
          $Res,
          _$ModerationOverviewEntityImpl
        >
    implements _$$ModerationOverviewEntityImplCopyWith<$Res> {
  __$$ModerationOverviewEntityImplCopyWithImpl(
    _$ModerationOverviewEntityImpl _value,
    $Res Function(_$ModerationOverviewEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModerationOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accountStatus = null,
    Object? warningCount = null,
    Object? totalViolationsCount = null,
    Object? activePenalties = null,
    Object? activeRestrictions = null,
    Object? recentViolations = null,
    Object? activeAppeals = null,
  }) {
    return _then(
      _$ModerationOverviewEntityImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        accountStatus: null == accountStatus
            ? _value.accountStatus
            : accountStatus // ignore: cast_nullable_to_non_nullable
                  as AccountStatus,
        warningCount: null == warningCount
            ? _value.warningCount
            : warningCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalViolationsCount: null == totalViolationsCount
            ? _value.totalViolationsCount
            : totalViolationsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        activePenalties: null == activePenalties
            ? _value._activePenalties
            : activePenalties // ignore: cast_nullable_to_non_nullable
                  as List<PenaltyEntity>,
        activeRestrictions: null == activeRestrictions
            ? _value._activeRestrictions
            : activeRestrictions // ignore: cast_nullable_to_non_nullable
                  as List<RestrictionEntity>,
        recentViolations: null == recentViolations
            ? _value._recentViolations
            : recentViolations // ignore: cast_nullable_to_non_nullable
                  as List<ViolationEntity>,
        activeAppeals: null == activeAppeals
            ? _value._activeAppeals
            : activeAppeals // ignore: cast_nullable_to_non_nullable
                  as List<AppealEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ModerationOverviewEntityImpl implements _ModerationOverviewEntity {
  const _$ModerationOverviewEntityImpl({
    required this.userId,
    required this.accountStatus,
    required this.warningCount,
    required this.totalViolationsCount,
    required final List<PenaltyEntity> activePenalties,
    required final List<RestrictionEntity> activeRestrictions,
    required final List<ViolationEntity> recentViolations,
    required final List<AppealEntity> activeAppeals,
  }) : _activePenalties = activePenalties,
       _activeRestrictions = activeRestrictions,
       _recentViolations = recentViolations,
       _activeAppeals = activeAppeals;

  @override
  final int userId;
  @override
  final AccountStatus accountStatus;
  @override
  final int warningCount;
  @override
  final int totalViolationsCount;
  final List<PenaltyEntity> _activePenalties;
  @override
  List<PenaltyEntity> get activePenalties {
    if (_activePenalties is EqualUnmodifiableListView) return _activePenalties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activePenalties);
  }

  final List<RestrictionEntity> _activeRestrictions;
  @override
  List<RestrictionEntity> get activeRestrictions {
    if (_activeRestrictions is EqualUnmodifiableListView)
      return _activeRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeRestrictions);
  }

  final List<ViolationEntity> _recentViolations;
  @override
  List<ViolationEntity> get recentViolations {
    if (_recentViolations is EqualUnmodifiableListView)
      return _recentViolations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentViolations);
  }

  final List<AppealEntity> _activeAppeals;
  @override
  List<AppealEntity> get activeAppeals {
    if (_activeAppeals is EqualUnmodifiableListView) return _activeAppeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeAppeals);
  }

  @override
  String toString() {
    return 'ModerationOverviewEntity(userId: $userId, accountStatus: $accountStatus, warningCount: $warningCount, totalViolationsCount: $totalViolationsCount, activePenalties: $activePenalties, activeRestrictions: $activeRestrictions, recentViolations: $recentViolations, activeAppeals: $activeAppeals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationOverviewEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.warningCount, warningCount) ||
                other.warningCount == warningCount) &&
            (identical(other.totalViolationsCount, totalViolationsCount) ||
                other.totalViolationsCount == totalViolationsCount) &&
            const DeepCollectionEquality().equals(
              other._activePenalties,
              _activePenalties,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeRestrictions,
              _activeRestrictions,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentViolations,
              _recentViolations,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeAppeals,
              _activeAppeals,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    accountStatus,
    warningCount,
    totalViolationsCount,
    const DeepCollectionEquality().hash(_activePenalties),
    const DeepCollectionEquality().hash(_activeRestrictions),
    const DeepCollectionEquality().hash(_recentViolations),
    const DeepCollectionEquality().hash(_activeAppeals),
  );

  /// Create a copy of ModerationOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationOverviewEntityImplCopyWith<_$ModerationOverviewEntityImpl>
  get copyWith =>
      __$$ModerationOverviewEntityImplCopyWithImpl<
        _$ModerationOverviewEntityImpl
      >(this, _$identity);
}

abstract class _ModerationOverviewEntity implements ModerationOverviewEntity {
  const factory _ModerationOverviewEntity({
    required final int userId,
    required final AccountStatus accountStatus,
    required final int warningCount,
    required final int totalViolationsCount,
    required final List<PenaltyEntity> activePenalties,
    required final List<RestrictionEntity> activeRestrictions,
    required final List<ViolationEntity> recentViolations,
    required final List<AppealEntity> activeAppeals,
  }) = _$ModerationOverviewEntityImpl;

  @override
  int get userId;
  @override
  AccountStatus get accountStatus;
  @override
  int get warningCount;
  @override
  int get totalViolationsCount;
  @override
  List<PenaltyEntity> get activePenalties;
  @override
  List<RestrictionEntity> get activeRestrictions;
  @override
  List<ViolationEntity> get recentViolations;
  @override
  List<AppealEntity> get activeAppeals;

  /// Create a copy of ModerationOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationOverviewEntityImplCopyWith<_$ModerationOverviewEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
