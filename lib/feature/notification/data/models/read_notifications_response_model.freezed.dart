// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_notifications_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReadNotificationsResponseModel _$ReadNotificationsResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _ReadNotificationsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReadNotificationsResponseModel {
  int? get count => throw _privateConstructorUsedError;

  /// Serializes this ReadNotificationsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadNotificationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadNotificationsResponseModelCopyWith<ReadNotificationsResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadNotificationsResponseModelCopyWith<$Res> {
  factory $ReadNotificationsResponseModelCopyWith(
    ReadNotificationsResponseModel value,
    $Res Function(ReadNotificationsResponseModel) then,
  ) =
      _$ReadNotificationsResponseModelCopyWithImpl<
        $Res,
        ReadNotificationsResponseModel
      >;
  @useResult
  $Res call({int? count});
}

/// @nodoc
class _$ReadNotificationsResponseModelCopyWithImpl<
  $Res,
  $Val extends ReadNotificationsResponseModel
>
    implements $ReadNotificationsResponseModelCopyWith<$Res> {
  _$ReadNotificationsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadNotificationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = freezed}) {
    return _then(
      _value.copyWith(
            count: freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReadNotificationsResponseModelImplCopyWith<$Res>
    implements $ReadNotificationsResponseModelCopyWith<$Res> {
  factory _$$ReadNotificationsResponseModelImplCopyWith(
    _$ReadNotificationsResponseModelImpl value,
    $Res Function(_$ReadNotificationsResponseModelImpl) then,
  ) = __$$ReadNotificationsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count});
}

/// @nodoc
class __$$ReadNotificationsResponseModelImplCopyWithImpl<$Res>
    extends
        _$ReadNotificationsResponseModelCopyWithImpl<
          $Res,
          _$ReadNotificationsResponseModelImpl
        >
    implements _$$ReadNotificationsResponseModelImplCopyWith<$Res> {
  __$$ReadNotificationsResponseModelImplCopyWithImpl(
    _$ReadNotificationsResponseModelImpl _value,
    $Res Function(_$ReadNotificationsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReadNotificationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = freezed}) {
    return _then(
      _$ReadNotificationsResponseModelImpl(
        count: freezed == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadNotificationsResponseModelImpl
    implements _ReadNotificationsResponseModel {
  const _$ReadNotificationsResponseModelImpl({this.count});

  factory _$ReadNotificationsResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ReadNotificationsResponseModelImplFromJson(json);

  @override
  final int? count;

  @override
  String toString() {
    return 'ReadNotificationsResponseModel(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadNotificationsResponseModelImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of ReadNotificationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadNotificationsResponseModelImplCopyWith<
    _$ReadNotificationsResponseModelImpl
  >
  get copyWith =>
      __$$ReadNotificationsResponseModelImplCopyWithImpl<
        _$ReadNotificationsResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadNotificationsResponseModelImplToJson(this);
  }
}

abstract class _ReadNotificationsResponseModel
    implements ReadNotificationsResponseModel {
  const factory _ReadNotificationsResponseModel({final int? count}) =
      _$ReadNotificationsResponseModelImpl;

  factory _ReadNotificationsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReadNotificationsResponseModelImpl.fromJson;

  @override
  int? get count;

  /// Create a copy of ReadNotificationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadNotificationsResponseModelImplCopyWith<
    _$ReadNotificationsResponseModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
