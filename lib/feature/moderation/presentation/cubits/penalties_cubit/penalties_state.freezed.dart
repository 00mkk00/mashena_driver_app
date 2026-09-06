// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penalties_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PenaltiesState {
  PenaltiesStatus get status => throw _privateConstructorUsedError;
  List<PenaltyEntity> get penalties => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PenaltiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PenaltiesStateCopyWith<PenaltiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenaltiesStateCopyWith<$Res> {
  factory $PenaltiesStateCopyWith(
    PenaltiesState value,
    $Res Function(PenaltiesState) then,
  ) = _$PenaltiesStateCopyWithImpl<$Res, PenaltiesState>;
  @useResult
  $Res call({
    PenaltiesStatus status,
    List<PenaltyEntity> penalties,
    bool hasReachedMax,
    String? errorMessage,
  });
}

/// @nodoc
class _$PenaltiesStateCopyWithImpl<$Res, $Val extends PenaltiesState>
    implements $PenaltiesStateCopyWith<$Res> {
  _$PenaltiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PenaltiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? penalties = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PenaltiesStatus,
            penalties: null == penalties
                ? _value.penalties
                : penalties // ignore: cast_nullable_to_non_nullable
                      as List<PenaltyEntity>,
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
abstract class _$$PenaltiesStateImplCopyWith<$Res>
    implements $PenaltiesStateCopyWith<$Res> {
  factory _$$PenaltiesStateImplCopyWith(
    _$PenaltiesStateImpl value,
    $Res Function(_$PenaltiesStateImpl) then,
  ) = __$$PenaltiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PenaltiesStatus status,
    List<PenaltyEntity> penalties,
    bool hasReachedMax,
    String? errorMessage,
  });
}

/// @nodoc
class __$$PenaltiesStateImplCopyWithImpl<$Res>
    extends _$PenaltiesStateCopyWithImpl<$Res, _$PenaltiesStateImpl>
    implements _$$PenaltiesStateImplCopyWith<$Res> {
  __$$PenaltiesStateImplCopyWithImpl(
    _$PenaltiesStateImpl _value,
    $Res Function(_$PenaltiesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PenaltiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? penalties = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$PenaltiesStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PenaltiesStatus,
        penalties: null == penalties
            ? _value._penalties
            : penalties // ignore: cast_nullable_to_non_nullable
                  as List<PenaltyEntity>,
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

class _$PenaltiesStateImpl implements _PenaltiesState {
  const _$PenaltiesStateImpl({
    this.status = PenaltiesStatus.initial,
    final List<PenaltyEntity> penalties = const [],
    this.hasReachedMax = false,
    this.errorMessage,
  }) : _penalties = penalties;

  @override
  @JsonKey()
  final PenaltiesStatus status;
  final List<PenaltyEntity> _penalties;
  @override
  @JsonKey()
  List<PenaltyEntity> get penalties {
    if (_penalties is EqualUnmodifiableListView) return _penalties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_penalties);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PenaltiesState(status: $status, penalties: $penalties, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenaltiesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._penalties,
              _penalties,
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
    const DeepCollectionEquality().hash(_penalties),
    hasReachedMax,
    errorMessage,
  );

  /// Create a copy of PenaltiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PenaltiesStateImplCopyWith<_$PenaltiesStateImpl> get copyWith =>
      __$$PenaltiesStateImplCopyWithImpl<_$PenaltiesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PenaltiesState implements PenaltiesState {
  const factory _PenaltiesState({
    final PenaltiesStatus status,
    final List<PenaltyEntity> penalties,
    final bool hasReachedMax,
    final String? errorMessage,
  }) = _$PenaltiesStateImpl;

  @override
  PenaltiesStatus get status;
  @override
  List<PenaltyEntity> get penalties;
  @override
  bool get hasReachedMax;
  @override
  String? get errorMessage;

  /// Create a copy of PenaltiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PenaltiesStateImplCopyWith<_$PenaltiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
