// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_overview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModerationOverviewState {
  ModerationOverviewStatus get status => throw _privateConstructorUsedError;
  ModerationOverviewEntity? get overview => throw _privateConstructorUsedError;
  List<RestrictionEntity> get activeRestrictions =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ModerationOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationOverviewStateCopyWith<ModerationOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationOverviewStateCopyWith<$Res> {
  factory $ModerationOverviewStateCopyWith(
    ModerationOverviewState value,
    $Res Function(ModerationOverviewState) then,
  ) = _$ModerationOverviewStateCopyWithImpl<$Res, ModerationOverviewState>;
  @useResult
  $Res call({
    ModerationOverviewStatus status,
    ModerationOverviewEntity? overview,
    List<RestrictionEntity> activeRestrictions,
    String? errorMessage,
  });

  $ModerationOverviewEntityCopyWith<$Res>? get overview;
}

/// @nodoc
class _$ModerationOverviewStateCopyWithImpl<
  $Res,
  $Val extends ModerationOverviewState
>
    implements $ModerationOverviewStateCopyWith<$Res> {
  _$ModerationOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? overview = freezed,
    Object? activeRestrictions = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ModerationOverviewStatus,
            overview: freezed == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as ModerationOverviewEntity?,
            activeRestrictions: null == activeRestrictions
                ? _value.activeRestrictions
                : activeRestrictions // ignore: cast_nullable_to_non_nullable
                      as List<RestrictionEntity>,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ModerationOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationOverviewEntityCopyWith<$Res>? get overview {
    if (_value.overview == null) {
      return null;
    }

    return $ModerationOverviewEntityCopyWith<$Res>(_value.overview!, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationOverviewStateImplCopyWith<$Res>
    implements $ModerationOverviewStateCopyWith<$Res> {
  factory _$$ModerationOverviewStateImplCopyWith(
    _$ModerationOverviewStateImpl value,
    $Res Function(_$ModerationOverviewStateImpl) then,
  ) = __$$ModerationOverviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ModerationOverviewStatus status,
    ModerationOverviewEntity? overview,
    List<RestrictionEntity> activeRestrictions,
    String? errorMessage,
  });

  @override
  $ModerationOverviewEntityCopyWith<$Res>? get overview;
}

/// @nodoc
class __$$ModerationOverviewStateImplCopyWithImpl<$Res>
    extends
        _$ModerationOverviewStateCopyWithImpl<
          $Res,
          _$ModerationOverviewStateImpl
        >
    implements _$$ModerationOverviewStateImplCopyWith<$Res> {
  __$$ModerationOverviewStateImplCopyWithImpl(
    _$ModerationOverviewStateImpl _value,
    $Res Function(_$ModerationOverviewStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModerationOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? overview = freezed,
    Object? activeRestrictions = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$ModerationOverviewStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ModerationOverviewStatus,
        overview: freezed == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as ModerationOverviewEntity?,
        activeRestrictions: null == activeRestrictions
            ? _value._activeRestrictions
            : activeRestrictions // ignore: cast_nullable_to_non_nullable
                  as List<RestrictionEntity>,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ModerationOverviewStateImpl implements _ModerationOverviewState {
  const _$ModerationOverviewStateImpl({
    this.status = ModerationOverviewStatus.initial,
    this.overview,
    final List<RestrictionEntity> activeRestrictions = const [],
    this.errorMessage,
  }) : _activeRestrictions = activeRestrictions;

  @override
  @JsonKey()
  final ModerationOverviewStatus status;
  @override
  final ModerationOverviewEntity? overview;
  final List<RestrictionEntity> _activeRestrictions;
  @override
  @JsonKey()
  List<RestrictionEntity> get activeRestrictions {
    if (_activeRestrictions is EqualUnmodifiableListView)
      return _activeRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeRestrictions);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ModerationOverviewState(status: $status, overview: $overview, activeRestrictions: $activeRestrictions, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationOverviewStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(
              other._activeRestrictions,
              _activeRestrictions,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    overview,
    const DeepCollectionEquality().hash(_activeRestrictions),
    errorMessage,
  );

  /// Create a copy of ModerationOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationOverviewStateImplCopyWith<_$ModerationOverviewStateImpl>
  get copyWith =>
      __$$ModerationOverviewStateImplCopyWithImpl<
        _$ModerationOverviewStateImpl
      >(this, _$identity);
}

abstract class _ModerationOverviewState implements ModerationOverviewState {
  const factory _ModerationOverviewState({
    final ModerationOverviewStatus status,
    final ModerationOverviewEntity? overview,
    final List<RestrictionEntity> activeRestrictions,
    final String? errorMessage,
  }) = _$ModerationOverviewStateImpl;

  @override
  ModerationOverviewStatus get status;
  @override
  ModerationOverviewEntity? get overview;
  @override
  List<RestrictionEntity> get activeRestrictions;
  @override
  String? get errorMessage;

  /// Create a copy of ModerationOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationOverviewStateImplCopyWith<_$ModerationOverviewStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
