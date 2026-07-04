// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetAppSettingParams {
  String get key => throw _privateConstructorUsedError;

  /// Create a copy of GetAppSettingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAppSettingParamsCopyWith<GetAppSettingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAppSettingParamsCopyWith<$Res> {
  factory $GetAppSettingParamsCopyWith(
    GetAppSettingParams value,
    $Res Function(GetAppSettingParams) then,
  ) = _$GetAppSettingParamsCopyWithImpl<$Res, GetAppSettingParams>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$GetAppSettingParamsCopyWithImpl<$Res, $Val extends GetAppSettingParams>
    implements $GetAppSettingParamsCopyWith<$Res> {
  _$GetAppSettingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAppSettingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null}) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetAppSettingParamsImplCopyWith<$Res>
    implements $GetAppSettingParamsCopyWith<$Res> {
  factory _$$GetAppSettingParamsImplCopyWith(
    _$GetAppSettingParamsImpl value,
    $Res Function(_$GetAppSettingParamsImpl) then,
  ) = __$$GetAppSettingParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$GetAppSettingParamsImplCopyWithImpl<$Res>
    extends _$GetAppSettingParamsCopyWithImpl<$Res, _$GetAppSettingParamsImpl>
    implements _$$GetAppSettingParamsImplCopyWith<$Res> {
  __$$GetAppSettingParamsImplCopyWithImpl(
    _$GetAppSettingParamsImpl _value,
    $Res Function(_$GetAppSettingParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAppSettingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null}) {
    return _then(
      _$GetAppSettingParamsImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetAppSettingParamsImpl implements _GetAppSettingParams {
  const _$GetAppSettingParamsImpl({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'GetAppSettingParams(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppSettingParamsImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of GetAppSettingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppSettingParamsImplCopyWith<_$GetAppSettingParamsImpl> get copyWith =>
      __$$GetAppSettingParamsImplCopyWithImpl<_$GetAppSettingParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _GetAppSettingParams implements GetAppSettingParams {
  const factory _GetAppSettingParams({required final String key}) =
      _$GetAppSettingParamsImpl;

  @override
  String get key;

  /// Create a copy of GetAppSettingParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAppSettingParamsImplCopyWith<_$GetAppSettingParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
