// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shared_ride_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SharedRideLocationParams _$SharedRideLocationParamsFromJson(
  Map<String, dynamic> json,
) {
  return _SharedRideLocationParams.fromJson(json);
}

/// @nodoc
mixin _$SharedRideLocationParams {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this SharedRideLocationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRideLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideLocationParamsCopyWith<SharedRideLocationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideLocationParamsCopyWith<$Res> {
  factory $SharedRideLocationParamsCopyWith(
    SharedRideLocationParams value,
    $Res Function(SharedRideLocationParams) then,
  ) = _$SharedRideLocationParamsCopyWithImpl<$Res, SharedRideLocationParams>;
  @useResult
  $Res call({double lat, double lng, String address});
}

/// @nodoc
class _$SharedRideLocationParamsCopyWithImpl<
  $Res,
  $Val extends SharedRideLocationParams
>
    implements $SharedRideLocationParamsCopyWith<$Res> {
  _$SharedRideLocationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null, Object? address = null}) {
    return _then(
      _value.copyWith(
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SharedRideLocationParamsImplCopyWith<$Res>
    implements $SharedRideLocationParamsCopyWith<$Res> {
  factory _$$SharedRideLocationParamsImplCopyWith(
    _$SharedRideLocationParamsImpl value,
    $Res Function(_$SharedRideLocationParamsImpl) then,
  ) = __$$SharedRideLocationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, String address});
}

/// @nodoc
class __$$SharedRideLocationParamsImplCopyWithImpl<$Res>
    extends
        _$SharedRideLocationParamsCopyWithImpl<
          $Res,
          _$SharedRideLocationParamsImpl
        >
    implements _$$SharedRideLocationParamsImplCopyWith<$Res> {
  __$$SharedRideLocationParamsImplCopyWithImpl(
    _$SharedRideLocationParamsImpl _value,
    $Res Function(_$SharedRideLocationParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null, Object? address = null}) {
    return _then(
      _$SharedRideLocationParamsImpl(
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedRideLocationParamsImpl implements _SharedRideLocationParams {
  const _$SharedRideLocationParamsImpl({
    required this.lat,
    required this.lng,
    required this.address,
  });

  factory _$SharedRideLocationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRideLocationParamsImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final String address;

  @override
  String toString() {
    return 'SharedRideLocationParams(lat: $lat, lng: $lng, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideLocationParamsImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, address);

  /// Create a copy of SharedRideLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideLocationParamsImplCopyWith<_$SharedRideLocationParamsImpl>
  get copyWith =>
      __$$SharedRideLocationParamsImplCopyWithImpl<
        _$SharedRideLocationParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRideLocationParamsImplToJson(this);
  }
}

abstract class _SharedRideLocationParams implements SharedRideLocationParams {
  const factory _SharedRideLocationParams({
    required final double lat,
    required final double lng,
    required final String address,
  }) = _$SharedRideLocationParamsImpl;

  factory _SharedRideLocationParams.fromJson(Map<String, dynamic> json) =
      _$SharedRideLocationParamsImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  String get address;

  /// Create a copy of SharedRideLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideLocationParamsImplCopyWith<_$SharedRideLocationParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CreateSharedRideParams _$CreateSharedRideParamsFromJson(
  Map<String, dynamic> json,
) {
  return _CreateSharedRideParams.fromJson(json);
}

/// @nodoc
mixin _$CreateSharedRideParams {
  SharedRideLocationParams get origin => throw _privateConstructorUsedError;
  SharedRideLocationParams get destination =>
      throw _privateConstructorUsedError;
  String get departureTime => throw _privateConstructorUsedError;
  int get maxPassengers => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this CreateSharedRideParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSharedRideParamsCopyWith<CreateSharedRideParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSharedRideParamsCopyWith<$Res> {
  factory $CreateSharedRideParamsCopyWith(
    CreateSharedRideParams value,
    $Res Function(CreateSharedRideParams) then,
  ) = _$CreateSharedRideParamsCopyWithImpl<$Res, CreateSharedRideParams>;
  @useResult
  $Res call({
    SharedRideLocationParams origin,
    SharedRideLocationParams destination,
    String departureTime,
    int maxPassengers,
    String? notes,
  });

  $SharedRideLocationParamsCopyWith<$Res> get origin;
  $SharedRideLocationParamsCopyWith<$Res> get destination;
}

/// @nodoc
class _$CreateSharedRideParamsCopyWithImpl<
  $Res,
  $Val extends CreateSharedRideParams
>
    implements $CreateSharedRideParamsCopyWith<$Res> {
  _$CreateSharedRideParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? departureTime = null,
    Object? maxPassengers = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            origin: null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                      as SharedRideLocationParams,
            destination: null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                      as SharedRideLocationParams,
            departureTime: null == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as String,
            maxPassengers: null == maxPassengers
                ? _value.maxPassengers
                : maxPassengers // ignore: cast_nullable_to_non_nullable
                      as int,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SharedRideLocationParamsCopyWith<$Res> get origin {
    return $SharedRideLocationParamsCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SharedRideLocationParamsCopyWith<$Res> get destination {
    return $SharedRideLocationParamsCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateSharedRideParamsImplCopyWith<$Res>
    implements $CreateSharedRideParamsCopyWith<$Res> {
  factory _$$CreateSharedRideParamsImplCopyWith(
    _$CreateSharedRideParamsImpl value,
    $Res Function(_$CreateSharedRideParamsImpl) then,
  ) = __$$CreateSharedRideParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SharedRideLocationParams origin,
    SharedRideLocationParams destination,
    String departureTime,
    int maxPassengers,
    String? notes,
  });

  @override
  $SharedRideLocationParamsCopyWith<$Res> get origin;
  @override
  $SharedRideLocationParamsCopyWith<$Res> get destination;
}

/// @nodoc
class __$$CreateSharedRideParamsImplCopyWithImpl<$Res>
    extends
        _$CreateSharedRideParamsCopyWithImpl<$Res, _$CreateSharedRideParamsImpl>
    implements _$$CreateSharedRideParamsImplCopyWith<$Res> {
  __$$CreateSharedRideParamsImplCopyWithImpl(
    _$CreateSharedRideParamsImpl _value,
    $Res Function(_$CreateSharedRideParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? departureTime = null,
    Object? maxPassengers = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$CreateSharedRideParamsImpl(
        origin: null == origin
            ? _value.origin
            : origin // ignore: cast_nullable_to_non_nullable
                  as SharedRideLocationParams,
        destination: null == destination
            ? _value.destination
            : destination // ignore: cast_nullable_to_non_nullable
                  as SharedRideLocationParams,
        departureTime: null == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as String,
        maxPassengers: null == maxPassengers
            ? _value.maxPassengers
            : maxPassengers // ignore: cast_nullable_to_non_nullable
                  as int,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSharedRideParamsImpl implements _CreateSharedRideParams {
  const _$CreateSharedRideParamsImpl({
    required this.origin,
    required this.destination,
    required this.departureTime,
    required this.maxPassengers,
    this.notes,
  });

  factory _$CreateSharedRideParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSharedRideParamsImplFromJson(json);

  @override
  final SharedRideLocationParams origin;
  @override
  final SharedRideLocationParams destination;
  @override
  final String departureTime;
  @override
  final int maxPassengers;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CreateSharedRideParams(origin: $origin, destination: $destination, departureTime: $departureTime, maxPassengers: $maxPassengers, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSharedRideParamsImpl &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.maxPassengers, maxPassengers) ||
                other.maxPassengers == maxPassengers) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    origin,
    destination,
    departureTime,
    maxPassengers,
    notes,
  );

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSharedRideParamsImplCopyWith<_$CreateSharedRideParamsImpl>
  get copyWith =>
      __$$CreateSharedRideParamsImplCopyWithImpl<_$CreateSharedRideParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSharedRideParamsImplToJson(this);
  }
}

abstract class _CreateSharedRideParams implements CreateSharedRideParams {
  const factory _CreateSharedRideParams({
    required final SharedRideLocationParams origin,
    required final SharedRideLocationParams destination,
    required final String departureTime,
    required final int maxPassengers,
    final String? notes,
  }) = _$CreateSharedRideParamsImpl;

  factory _CreateSharedRideParams.fromJson(Map<String, dynamic> json) =
      _$CreateSharedRideParamsImpl.fromJson;

  @override
  SharedRideLocationParams get origin;
  @override
  SharedRideLocationParams get destination;
  @override
  String get departureTime;
  @override
  int get maxPassengers;
  @override
  String? get notes;

  /// Create a copy of CreateSharedRideParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSharedRideParamsImplCopyWith<_$CreateSharedRideParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
