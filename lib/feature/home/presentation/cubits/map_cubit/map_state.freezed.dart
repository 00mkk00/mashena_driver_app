// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MapState {
  MapLoadStatus get status => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get heading => throw _privateConstructorUsedError; // degrees 0–360
  MapController? get controller => throw _privateConstructorUsedError;
  List<Marker> get markers => throw _privateConstructorUsedError;
  List<Polyline<Object>> get polylines => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call({
    MapLoadStatus status,
    double? latitude,
    double? longitude,
    double? heading,
    MapController? controller,
    List<Marker> markers,
    List<Polyline<Object>> polylines,
    bool isDarkMode,
    String? errorMessage,
  });
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
    Object? controller = freezed,
    Object? markers = null,
    Object? polylines = null,
    Object? isDarkMode = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MapLoadStatus,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            heading: freezed == heading
                ? _value.heading
                : heading // ignore: cast_nullable_to_non_nullable
                      as double?,
            controller: freezed == controller
                ? _value.controller
                : controller // ignore: cast_nullable_to_non_nullable
                      as MapController?,
            markers: null == markers
                ? _value.markers
                : markers // ignore: cast_nullable_to_non_nullable
                      as List<Marker>,
            polylines: null == polylines
                ? _value.polylines
                : polylines // ignore: cast_nullable_to_non_nullable
                      as List<Polyline<Object>>,
            isDarkMode: null == isDarkMode
                ? _value.isDarkMode
                : isDarkMode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
    _$MapStateImpl value,
    $Res Function(_$MapStateImpl) then,
  ) = __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MapLoadStatus status,
    double? latitude,
    double? longitude,
    double? heading,
    MapController? controller,
    List<Marker> markers,
    List<Polyline<Object>> polylines,
    bool isDarkMode,
    String? errorMessage,
  });
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
    _$MapStateImpl _value,
    $Res Function(_$MapStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
    Object? controller = freezed,
    Object? markers = null,
    Object? polylines = null,
    Object? isDarkMode = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$MapStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MapLoadStatus,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        heading: freezed == heading
            ? _value.heading
            : heading // ignore: cast_nullable_to_non_nullable
                  as double?,
        controller: freezed == controller
            ? _value.controller
            : controller // ignore: cast_nullable_to_non_nullable
                  as MapController?,
        markers: null == markers
            ? _value._markers
            : markers // ignore: cast_nullable_to_non_nullable
                  as List<Marker>,
        polylines: null == polylines
            ? _value._polylines
            : polylines // ignore: cast_nullable_to_non_nullable
                  as List<Polyline<Object>>,
        isDarkMode: null == isDarkMode
            ? _value.isDarkMode
            : isDarkMode // ignore: cast_nullable_to_non_nullable
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

class _$MapStateImpl extends _MapState {
  const _$MapStateImpl({
    this.status = MapLoadStatus.initial,
    this.latitude,
    this.longitude,
    this.heading,
    this.controller,
    final List<Marker> markers = const [],
    final List<Polyline<Object>> polylines = const [],
    this.isDarkMode = false,
    this.errorMessage,
  }) : _markers = markers,
       _polylines = polylines,
       super._();

  @override
  @JsonKey()
  final MapLoadStatus status;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? heading;
  // degrees 0–360
  @override
  final MapController? controller;
  final List<Marker> _markers;
  @override
  @JsonKey()
  List<Marker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  final List<Polyline<Object>> _polylines;
  @override
  @JsonKey()
  List<Polyline<Object>> get polylines {
    if (_polylines is EqualUnmodifiableListView) return _polylines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylines);
  }

  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MapState(status: $status, latitude: $latitude, longitude: $longitude, heading: $heading, controller: $controller, markers: $markers, polylines: $polylines, isDarkMode: $isDarkMode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality().equals(
              other._polylines,
              _polylines,
            ) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    latitude,
    longitude,
    heading,
    controller,
    const DeepCollectionEquality().hash(_markers),
    const DeepCollectionEquality().hash(_polylines),
    isDarkMode,
    errorMessage,
  );

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);
}

abstract class _MapState extends MapState {
  const factory _MapState({
    final MapLoadStatus status,
    final double? latitude,
    final double? longitude,
    final double? heading,
    final MapController? controller,
    final List<Marker> markers,
    final List<Polyline<Object>> polylines,
    final bool isDarkMode,
    final String? errorMessage,
  }) = _$MapStateImpl;
  const _MapState._() : super._();

  @override
  MapLoadStatus get status;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get heading; // degrees 0–360
  @override
  MapController? get controller;
  @override
  List<Marker> get markers;
  @override
  List<Polyline<Object>> get polylines;
  @override
  bool get isDarkMode;
  @override
  String? get errorMessage;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
