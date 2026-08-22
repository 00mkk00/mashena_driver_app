// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ModerationOverviewModel _$ModerationOverviewModelFromJson(
  Map<String, dynamic> json,
) {
  return _ModerationOverviewModel.fromJson(json);
}

/// @nodoc
mixin _$ModerationOverviewModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId => throw _privateConstructorUsedError;
  String? get accountStatus => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get warningCount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get totalViolationsCount => throw _privateConstructorUsedError;
  List<PenaltyModel>? get activePenalties => throw _privateConstructorUsedError;
  List<RestrictionModel>? get activeRestrictions =>
      throw _privateConstructorUsedError;
  List<ViolationModel>? get recentViolations =>
      throw _privateConstructorUsedError;
  List<AppealModel>? get activeAppeals => throw _privateConstructorUsedError;

  /// Serializes this ModerationOverviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationOverviewModelCopyWith<ModerationOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationOverviewModelCopyWith<$Res> {
  factory $ModerationOverviewModelCopyWith(
    ModerationOverviewModel value,
    $Res Function(ModerationOverviewModel) then,
  ) = _$ModerationOverviewModelCopyWithImpl<$Res, ModerationOverviewModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? accountStatus,
    @JsonKey(fromJson: parseIntFromJson) int? warningCount,
    @JsonKey(fromJson: parseIntFromJson) int? totalViolationsCount,
    List<PenaltyModel>? activePenalties,
    List<RestrictionModel>? activeRestrictions,
    List<ViolationModel>? recentViolations,
    List<AppealModel>? activeAppeals,
  });
}

/// @nodoc
class _$ModerationOverviewModelCopyWithImpl<
  $Res,
  $Val extends ModerationOverviewModel
>
    implements $ModerationOverviewModelCopyWith<$Res> {
  _$ModerationOverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? accountStatus = freezed,
    Object? warningCount = freezed,
    Object? totalViolationsCount = freezed,
    Object? activePenalties = freezed,
    Object? activeRestrictions = freezed,
    Object? recentViolations = freezed,
    Object? activeAppeals = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            accountStatus: freezed == accountStatus
                ? _value.accountStatus
                : accountStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            warningCount: freezed == warningCount
                ? _value.warningCount
                : warningCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalViolationsCount: freezed == totalViolationsCount
                ? _value.totalViolationsCount
                : totalViolationsCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            activePenalties: freezed == activePenalties
                ? _value.activePenalties
                : activePenalties // ignore: cast_nullable_to_non_nullable
                      as List<PenaltyModel>?,
            activeRestrictions: freezed == activeRestrictions
                ? _value.activeRestrictions
                : activeRestrictions // ignore: cast_nullable_to_non_nullable
                      as List<RestrictionModel>?,
            recentViolations: freezed == recentViolations
                ? _value.recentViolations
                : recentViolations // ignore: cast_nullable_to_non_nullable
                      as List<ViolationModel>?,
            activeAppeals: freezed == activeAppeals
                ? _value.activeAppeals
                : activeAppeals // ignore: cast_nullable_to_non_nullable
                      as List<AppealModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModerationOverviewModelImplCopyWith<$Res>
    implements $ModerationOverviewModelCopyWith<$Res> {
  factory _$$ModerationOverviewModelImplCopyWith(
    _$ModerationOverviewModelImpl value,
    $Res Function(_$ModerationOverviewModelImpl) then,
  ) = __$$ModerationOverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? accountStatus,
    @JsonKey(fromJson: parseIntFromJson) int? warningCount,
    @JsonKey(fromJson: parseIntFromJson) int? totalViolationsCount,
    List<PenaltyModel>? activePenalties,
    List<RestrictionModel>? activeRestrictions,
    List<ViolationModel>? recentViolations,
    List<AppealModel>? activeAppeals,
  });
}

/// @nodoc
class __$$ModerationOverviewModelImplCopyWithImpl<$Res>
    extends
        _$ModerationOverviewModelCopyWithImpl<
          $Res,
          _$ModerationOverviewModelImpl
        >
    implements _$$ModerationOverviewModelImplCopyWith<$Res> {
  __$$ModerationOverviewModelImplCopyWithImpl(
    _$ModerationOverviewModelImpl _value,
    $Res Function(_$ModerationOverviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModerationOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? accountStatus = freezed,
    Object? warningCount = freezed,
    Object? totalViolationsCount = freezed,
    Object? activePenalties = freezed,
    Object? activeRestrictions = freezed,
    Object? recentViolations = freezed,
    Object? activeAppeals = freezed,
  }) {
    return _then(
      _$ModerationOverviewModelImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        accountStatus: freezed == accountStatus
            ? _value.accountStatus
            : accountStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        warningCount: freezed == warningCount
            ? _value.warningCount
            : warningCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalViolationsCount: freezed == totalViolationsCount
            ? _value.totalViolationsCount
            : totalViolationsCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        activePenalties: freezed == activePenalties
            ? _value._activePenalties
            : activePenalties // ignore: cast_nullable_to_non_nullable
                  as List<PenaltyModel>?,
        activeRestrictions: freezed == activeRestrictions
            ? _value._activeRestrictions
            : activeRestrictions // ignore: cast_nullable_to_non_nullable
                  as List<RestrictionModel>?,
        recentViolations: freezed == recentViolations
            ? _value._recentViolations
            : recentViolations // ignore: cast_nullable_to_non_nullable
                  as List<ViolationModel>?,
        activeAppeals: freezed == activeAppeals
            ? _value._activeAppeals
            : activeAppeals // ignore: cast_nullable_to_non_nullable
                  as List<AppealModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationOverviewModelImpl implements _ModerationOverviewModel {
  const _$ModerationOverviewModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.userId,
    this.accountStatus,
    @JsonKey(fromJson: parseIntFromJson) this.warningCount,
    @JsonKey(fromJson: parseIntFromJson) this.totalViolationsCount,
    final List<PenaltyModel>? activePenalties,
    final List<RestrictionModel>? activeRestrictions,
    final List<ViolationModel>? recentViolations,
    final List<AppealModel>? activeAppeals,
  }) : _activePenalties = activePenalties,
       _activeRestrictions = activeRestrictions,
       _recentViolations = recentViolations,
       _activeAppeals = activeAppeals;

  factory _$ModerationOverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationOverviewModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? userId;
  @override
  final String? accountStatus;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? warningCount;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? totalViolationsCount;
  final List<PenaltyModel>? _activePenalties;
  @override
  List<PenaltyModel>? get activePenalties {
    final value = _activePenalties;
    if (value == null) return null;
    if (_activePenalties is EqualUnmodifiableListView) return _activePenalties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RestrictionModel>? _activeRestrictions;
  @override
  List<RestrictionModel>? get activeRestrictions {
    final value = _activeRestrictions;
    if (value == null) return null;
    if (_activeRestrictions is EqualUnmodifiableListView)
      return _activeRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ViolationModel>? _recentViolations;
  @override
  List<ViolationModel>? get recentViolations {
    final value = _recentViolations;
    if (value == null) return null;
    if (_recentViolations is EqualUnmodifiableListView)
      return _recentViolations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AppealModel>? _activeAppeals;
  @override
  List<AppealModel>? get activeAppeals {
    final value = _activeAppeals;
    if (value == null) return null;
    if (_activeAppeals is EqualUnmodifiableListView) return _activeAppeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModerationOverviewModel(userId: $userId, accountStatus: $accountStatus, warningCount: $warningCount, totalViolationsCount: $totalViolationsCount, activePenalties: $activePenalties, activeRestrictions: $activeRestrictions, recentViolations: $recentViolations, activeAppeals: $activeAppeals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationOverviewModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ModerationOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationOverviewModelImplCopyWith<_$ModerationOverviewModelImpl>
  get copyWith =>
      __$$ModerationOverviewModelImplCopyWithImpl<
        _$ModerationOverviewModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationOverviewModelImplToJson(this);
  }
}

abstract class _ModerationOverviewModel implements ModerationOverviewModel {
  const factory _ModerationOverviewModel({
    @JsonKey(fromJson: parseIntFromJson) final int? userId,
    final String? accountStatus,
    @JsonKey(fromJson: parseIntFromJson) final int? warningCount,
    @JsonKey(fromJson: parseIntFromJson) final int? totalViolationsCount,
    final List<PenaltyModel>? activePenalties,
    final List<RestrictionModel>? activeRestrictions,
    final List<ViolationModel>? recentViolations,
    final List<AppealModel>? activeAppeals,
  }) = _$ModerationOverviewModelImpl;

  factory _ModerationOverviewModel.fromJson(Map<String, dynamic> json) =
      _$ModerationOverviewModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId;
  @override
  String? get accountStatus;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get warningCount;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get totalViolationsCount;
  @override
  List<PenaltyModel>? get activePenalties;
  @override
  List<RestrictionModel>? get activeRestrictions;
  @override
  List<ViolationModel>? get recentViolations;
  @override
  List<AppealModel>? get activeAppeals;

  /// Create a copy of ModerationOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationOverviewModelImplCopyWith<_$ModerationOverviewModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
