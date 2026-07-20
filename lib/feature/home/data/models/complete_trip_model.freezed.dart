// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompleteTripModel _$CompleteTripModelFromJson(Map<String, dynamic> json) {
  return _CompleteTripModel.fromJson(json);
}

/// @nodoc
mixin _$CompleteTripModel {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this CompleteTripModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteTripModelCopyWith<CompleteTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTripModelCopyWith<$Res> {
  factory $CompleteTripModelCopyWith(
    CompleteTripModel value,
    $Res Function(CompleteTripModel) then,
  ) = _$CompleteTripModelCopyWithImpl<$Res, CompleteTripModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CompleteTripModelCopyWithImpl<$Res, $Val extends CompleteTripModel>
    implements $CompleteTripModelCopyWith<$Res> {
  _$CompleteTripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompleteTripModelImplCopyWith<$Res>
    implements $CompleteTripModelCopyWith<$Res> {
  factory _$$CompleteTripModelImplCopyWith(
    _$CompleteTripModelImpl value,
    $Res Function(_$CompleteTripModelImpl) then,
  ) = __$$CompleteTripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CompleteTripModelImplCopyWithImpl<$Res>
    extends _$CompleteTripModelCopyWithImpl<$Res, _$CompleteTripModelImpl>
    implements _$$CompleteTripModelImplCopyWith<$Res> {
  __$$CompleteTripModelImplCopyWithImpl(
    _$CompleteTripModelImpl _value,
    $Res Function(_$CompleteTripModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CompleteTripModelImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteTripModelImpl implements _CompleteTripModel {
  const _$CompleteTripModelImpl({required this.message});

  factory _$CompleteTripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteTripModelImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'CompleteTripModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTripModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTripModelImplCopyWith<_$CompleteTripModelImpl> get copyWith =>
      __$$CompleteTripModelImplCopyWithImpl<_$CompleteTripModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteTripModelImplToJson(this);
  }
}

abstract class _CompleteTripModel implements CompleteTripModel {
  const factory _CompleteTripModel({required final String message}) =
      _$CompleteTripModelImpl;

  factory _CompleteTripModel.fromJson(Map<String, dynamic> json) =
      _$CompleteTripModelImpl.fromJson;

  @override
  String get message;

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTripModelImplCopyWith<_$CompleteTripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
