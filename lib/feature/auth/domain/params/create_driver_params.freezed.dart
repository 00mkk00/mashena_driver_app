// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_driver_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateDriverParams _$CreateDriverParamsFromJson(Map<String, dynamic> json) {
  return _CreateDriverParams.fromJson(json);
}

/// @nodoc
mixin _$CreateDriverParams {
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;

  /// Serializes this CreateDriverParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateDriverParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDriverParamsCopyWith<CreateDriverParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDriverParamsCopyWith<$Res> {
  factory $CreateDriverParamsCopyWith(
    CreateDriverParams value,
    $Res Function(CreateDriverParams) then,
  ) = _$CreateDriverParamsCopyWithImpl<$Res, CreateDriverParams>;
  @useResult
  $Res call({
    String fullName,
    String email,
    String phoneNumber,
    String password,
    String? city,
    String? file,
  });
}

/// @nodoc
class _$CreateDriverParamsCopyWithImpl<$Res, $Val extends CreateDriverParams>
    implements $CreateDriverParamsCopyWith<$Res> {
  _$CreateDriverParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDriverParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? city = freezed,
    Object? file = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateDriverParamsImplCopyWith<$Res>
    implements $CreateDriverParamsCopyWith<$Res> {
  factory _$$CreateDriverParamsImplCopyWith(
    _$CreateDriverParamsImpl value,
    $Res Function(_$CreateDriverParamsImpl) then,
  ) = __$$CreateDriverParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fullName,
    String email,
    String phoneNumber,
    String password,
    String? city,
    String? file,
  });
}

/// @nodoc
class __$$CreateDriverParamsImplCopyWithImpl<$Res>
    extends _$CreateDriverParamsCopyWithImpl<$Res, _$CreateDriverParamsImpl>
    implements _$$CreateDriverParamsImplCopyWith<$Res> {
  __$$CreateDriverParamsImplCopyWithImpl(
    _$CreateDriverParamsImpl _value,
    $Res Function(_$CreateDriverParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateDriverParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? city = freezed,
    Object? file = freezed,
  }) {
    return _then(
      _$CreateDriverParamsImpl(
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDriverParamsImpl implements _CreateDriverParams {
  const _$CreateDriverParamsImpl({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    this.city,
    this.file,
  });

  factory _$CreateDriverParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDriverParamsImplFromJson(json);

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String? city;
  @override
  final String? file;

  @override
  String toString() {
    return 'CreateDriverParams(fullName: $fullName, email: $email, phoneNumber: $phoneNumber, password: $password, city: $city, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDriverParamsImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fullName,
    email,
    phoneNumber,
    password,
    city,
    file,
  );

  /// Create a copy of CreateDriverParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDriverParamsImplCopyWith<_$CreateDriverParamsImpl> get copyWith =>
      __$$CreateDriverParamsImplCopyWithImpl<_$CreateDriverParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDriverParamsImplToJson(this);
  }
}

abstract class _CreateDriverParams implements CreateDriverParams {
  const factory _CreateDriverParams({
    required final String fullName,
    required final String email,
    required final String phoneNumber,
    required final String password,
    final String? city,
    final String? file,
  }) = _$CreateDriverParamsImpl;

  factory _CreateDriverParams.fromJson(Map<String, dynamic> json) =
      _$CreateDriverParamsImpl.fromJson;

  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  String? get city;
  @override
  String? get file;

  /// Create a copy of CreateDriverParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDriverParamsImplCopyWith<_$CreateDriverParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
