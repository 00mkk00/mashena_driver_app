// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CancelTripModel _$CancelTripModelFromJson(Map<String, dynamic> json) {
  return _CancelTripModel.fromJson(json);
}

/// @nodoc
mixin _$CancelTripModel {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CancelTripModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelTripModelCopyWith<CancelTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelTripModelCopyWith<$Res> {
  factory $CancelTripModelCopyWith(
    CancelTripModel value,
    $Res Function(CancelTripModel) then,
  ) = _$CancelTripModelCopyWithImpl<$Res, CancelTripModel>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$CancelTripModelCopyWithImpl<$Res, $Val extends CancelTripModel>
    implements $CancelTripModelCopyWith<$Res> {
  _$CancelTripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CancelTripModelImplCopyWith<$Res>
    implements $CancelTripModelCopyWith<$Res> {
  factory _$$CancelTripModelImplCopyWith(
    _$CancelTripModelImpl value,
    $Res Function(_$CancelTripModelImpl) then,
  ) = __$$CancelTripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CancelTripModelImplCopyWithImpl<$Res>
    extends _$CancelTripModelCopyWithImpl<$Res, _$CancelTripModelImpl>
    implements _$$CancelTripModelImplCopyWith<$Res> {
  __$$CancelTripModelImplCopyWithImpl(
    _$CancelTripModelImpl _value,
    $Res Function(_$CancelTripModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$CancelTripModelImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelTripModelImpl implements _CancelTripModel {
  const _$CancelTripModelImpl({this.message});

  factory _$CancelTripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelTripModelImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'CancelTripModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelTripModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CancelTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelTripModelImplCopyWith<_$CancelTripModelImpl> get copyWith =>
      __$$CancelTripModelImplCopyWithImpl<_$CancelTripModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelTripModelImplToJson(this);
  }
}

abstract class _CancelTripModel implements CancelTripModel {
  const factory _CancelTripModel({final String? message}) =
      _$CancelTripModelImpl;

  factory _CancelTripModel.fromJson(Map<String, dynamic> json) =
      _$CancelTripModelImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of CancelTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelTripModelImplCopyWith<_$CancelTripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
