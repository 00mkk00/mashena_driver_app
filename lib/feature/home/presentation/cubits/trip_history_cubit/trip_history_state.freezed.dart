// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TripHistoryState {
  TripHistoryStatus get status => throw _privateConstructorUsedError;
  List<DriverTripHistoryEntity> get trips => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TripHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripHistoryStateCopyWith<TripHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripHistoryStateCopyWith<$Res> {
  factory $TripHistoryStateCopyWith(
    TripHistoryState value,
    $Res Function(TripHistoryState) then,
  ) = _$TripHistoryStateCopyWithImpl<$Res, TripHistoryState>;
  @useResult
  $Res call({
    TripHistoryStatus status,
    List<DriverTripHistoryEntity> trips,
    bool hasReachedMax,
    String? errorMessage,
  });
}

/// @nodoc
class _$TripHistoryStateCopyWithImpl<$Res, $Val extends TripHistoryState>
    implements $TripHistoryStateCopyWith<$Res> {
  _$TripHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? trips = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TripHistoryStatus,
            trips: null == trips
                ? _value.trips
                : trips // ignore: cast_nullable_to_non_nullable
                      as List<DriverTripHistoryEntity>,
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
abstract class _$$TripHistoryStateImplCopyWith<$Res>
    implements $TripHistoryStateCopyWith<$Res> {
  factory _$$TripHistoryStateImplCopyWith(
    _$TripHistoryStateImpl value,
    $Res Function(_$TripHistoryStateImpl) then,
  ) = __$$TripHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TripHistoryStatus status,
    List<DriverTripHistoryEntity> trips,
    bool hasReachedMax,
    String? errorMessage,
  });
}

/// @nodoc
class __$$TripHistoryStateImplCopyWithImpl<$Res>
    extends _$TripHistoryStateCopyWithImpl<$Res, _$TripHistoryStateImpl>
    implements _$$TripHistoryStateImplCopyWith<$Res> {
  __$$TripHistoryStateImplCopyWithImpl(
    _$TripHistoryStateImpl _value,
    $Res Function(_$TripHistoryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? trips = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$TripHistoryStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TripHistoryStatus,
        trips: null == trips
            ? _value._trips
            : trips // ignore: cast_nullable_to_non_nullable
                  as List<DriverTripHistoryEntity>,
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

class _$TripHistoryStateImpl implements _TripHistoryState {
  const _$TripHistoryStateImpl({
    this.status = TripHistoryStatus.initial,
    final List<DriverTripHistoryEntity> trips = const [],
    this.hasReachedMax = false,
    this.errorMessage,
  }) : _trips = trips;

  @override
  @JsonKey()
  final TripHistoryStatus status;
  final List<DriverTripHistoryEntity> _trips;
  @override
  @JsonKey()
  List<DriverTripHistoryEntity> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripHistoryState(status: $status, trips: $trips, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripHistoryStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_trips),
    hasReachedMax,
    errorMessage,
  );

  /// Create a copy of TripHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripHistoryStateImplCopyWith<_$TripHistoryStateImpl> get copyWith =>
      __$$TripHistoryStateImplCopyWithImpl<_$TripHistoryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TripHistoryState implements TripHistoryState {
  const factory _TripHistoryState({
    final TripHistoryStatus status,
    final List<DriverTripHistoryEntity> trips,
    final bool hasReachedMax,
    final String? errorMessage,
  }) = _$TripHistoryStateImpl;

  @override
  TripHistoryStatus get status;
  @override
  List<DriverTripHistoryEntity> get trips;
  @override
  bool get hasReachedMax;
  @override
  String? get errorMessage;

  /// Create a copy of TripHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripHistoryStateImplCopyWith<_$TripHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
