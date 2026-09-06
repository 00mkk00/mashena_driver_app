// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'violations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ViolationsState {
  ViolationsStatus get status => throw _privateConstructorUsedError;
  List<ViolationEntity> get violations => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ViolationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViolationsStateCopyWith<ViolationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViolationsStateCopyWith<$Res> {
  factory $ViolationsStateCopyWith(
    ViolationsState value,
    $Res Function(ViolationsState) then,
  ) = _$ViolationsStateCopyWithImpl<$Res, ViolationsState>;
  @useResult
  $Res call({
    ViolationsStatus status,
    List<ViolationEntity> violations,
    bool hasReachedMax,
    String? errorMessage,
  });
}

/// @nodoc
class _$ViolationsStateCopyWithImpl<$Res, $Val extends ViolationsState>
    implements $ViolationsStateCopyWith<$Res> {
  _$ViolationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViolationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? violations = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ViolationsStatus,
            violations: null == violations
                ? _value.violations
                : violations // ignore: cast_nullable_to_non_nullable
                      as List<ViolationEntity>,
            hasReachedMax: null == hasReachedMax
                ? _value.hasReachedMax
                : hasReachedMax // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ViolationsStateImplCopyWith<$Res>
    implements $ViolationsStateCopyWith<$Res> {
  factory _$$ViolationsStateImplCopyWith(
    _$ViolationsStateImpl value,
    $Res Function(_$ViolationsStateImpl) then,
  ) = __$$ViolationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ViolationsStatus status,
    List<ViolationEntity> violations,
    bool hasReachedMax,
    String? errorMessage,
  });
}

/// @nodoc
class __$$ViolationsStateImplCopyWithImpl<$Res>
    extends _$ViolationsStateCopyWithImpl<$Res, _$ViolationsStateImpl>
    implements _$$ViolationsStateImplCopyWith<$Res> {
  __$$ViolationsStateImplCopyWithImpl(
    _$ViolationsStateImpl _value,
    $Res Function(_$ViolationsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ViolationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? violations = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$ViolationsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ViolationsStatus,
        violations: null == violations
            ? _value._violations
            : violations // ignore: cast_nullable_to_non_nullable
                  as List<ViolationEntity>,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ViolationsStateImpl implements _ViolationsState {
  const _$ViolationsStateImpl({
    this.status = ViolationsStatus.initial,
    final List<ViolationEntity> violations = const [],
    this.hasReachedMax = false,
    this.errorMessage,
  }) : _violations = violations;

  @override
  @JsonKey()
  final ViolationsStatus status;
  final List<ViolationEntity> _violations;
  @override
  @JsonKey()
  List<ViolationEntity> get violations {
    if (_violations is EqualUnmodifiableListView) return _violations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_violations);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ViolationsState(status: $status, violations: $violations, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViolationsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._violations,
              _violations,
            ) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_violations),
    hasReachedMax,
    errorMessage,
  );

  /// Create a copy of ViolationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViolationsStateImplCopyWith<_$ViolationsStateImpl> get copyWith =>
      __$$ViolationsStateImplCopyWithImpl<_$ViolationsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ViolationsState implements ViolationsState {
  const factory _ViolationsState({
    final ViolationsStatus status,
    final List<ViolationEntity> violations,
    final bool hasReachedMax,
    final String? errorMessage,
  }) = _$ViolationsStateImpl;

  @override
  ViolationsStatus get status;
  @override
  List<ViolationEntity> get violations;
  @override
  bool get hasReachedMax;
  @override
  String? get errorMessage;

  /// Create a copy of ViolationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViolationsStateImplCopyWith<_$ViolationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
