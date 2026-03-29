// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SendOtpParams _$SendOtpParamsFromJson(Map<String, dynamic> json) {
  return _SendOtpParams.fromJson(json);
}

/// @nodoc
mixin _$SendOtpParams {
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this SendOtpParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendOtpParamsCopyWith<SendOtpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpParamsCopyWith<$Res> {
  factory $SendOtpParamsCopyWith(
    SendOtpParams value,
    $Res Function(SendOtpParams) then,
  ) = _$SendOtpParamsCopyWithImpl<$Res, SendOtpParams>;
  @useResult
  $Res call({String email, String phone});
}

/// @nodoc
class _$SendOtpParamsCopyWithImpl<$Res, $Val extends SendOtpParams>
    implements $SendOtpParamsCopyWith<$Res> {
  _$SendOtpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? phone = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendOtpParamsImplCopyWith<$Res>
    implements $SendOtpParamsCopyWith<$Res> {
  factory _$$SendOtpParamsImplCopyWith(
    _$SendOtpParamsImpl value,
    $Res Function(_$SendOtpParamsImpl) then,
  ) = __$$SendOtpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String phone});
}

/// @nodoc
class __$$SendOtpParamsImplCopyWithImpl<$Res>
    extends _$SendOtpParamsCopyWithImpl<$Res, _$SendOtpParamsImpl>
    implements _$$SendOtpParamsImplCopyWith<$Res> {
  __$$SendOtpParamsImplCopyWithImpl(
    _$SendOtpParamsImpl _value,
    $Res Function(_$SendOtpParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? phone = null}) {
    return _then(
      _$SendOtpParamsImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpParamsImpl implements _SendOtpParams {
  const _$SendOtpParamsImpl({required this.email, required this.phone});

  factory _$SendOtpParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'SendOtpParams(email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone);

  /// Create a copy of SendOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpParamsImplCopyWith<_$SendOtpParamsImpl> get copyWith =>
      __$$SendOtpParamsImplCopyWithImpl<_$SendOtpParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpParamsImplToJson(this);
  }
}

abstract class _SendOtpParams implements SendOtpParams {
  const factory _SendOtpParams({
    required final String email,
    required final String phone,
  }) = _$SendOtpParamsImpl;

  factory _SendOtpParams.fromJson(Map<String, dynamic> json) =
      _$SendOtpParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get phone;

  /// Create a copy of SendOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpParamsImplCopyWith<_$SendOtpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
