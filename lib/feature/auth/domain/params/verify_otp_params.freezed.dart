// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VerifyOtpParams _$VerifyOtpParamsFromJson(Map<String, dynamic> json) {
  return _VerifyOtpParams.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpParams {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpParamsCopyWith<VerifyOtpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpParamsCopyWith<$Res> {
  factory $VerifyOtpParamsCopyWith(
    VerifyOtpParams value,
    $Res Function(VerifyOtpParams) then,
  ) = _$VerifyOtpParamsCopyWithImpl<$Res, VerifyOtpParams>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$VerifyOtpParamsCopyWithImpl<$Res, $Val extends VerifyOtpParams>
    implements $VerifyOtpParamsCopyWith<$Res> {
  _$VerifyOtpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyOtpParamsImplCopyWith<$Res>
    implements $VerifyOtpParamsCopyWith<$Res> {
  factory _$$VerifyOtpParamsImplCopyWith(
    _$VerifyOtpParamsImpl value,
    $Res Function(_$VerifyOtpParamsImpl) then,
  ) = __$$VerifyOtpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$VerifyOtpParamsImplCopyWithImpl<$Res>
    extends _$VerifyOtpParamsCopyWithImpl<$Res, _$VerifyOtpParamsImpl>
    implements _$$VerifyOtpParamsImplCopyWith<$Res> {
  __$$VerifyOtpParamsImplCopyWithImpl(
    _$VerifyOtpParamsImpl _value,
    $Res Function(_$VerifyOtpParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? code = null}) {
    return _then(
      _$VerifyOtpParamsImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpParamsImpl implements _VerifyOtpParams {
  const _$VerifyOtpParamsImpl({required this.email, required this.code});

  factory _$VerifyOtpParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyOtpParams(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpParamsImplCopyWith<_$VerifyOtpParamsImpl> get copyWith =>
      __$$VerifyOtpParamsImplCopyWithImpl<_$VerifyOtpParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpParamsImplToJson(this);
  }
}

abstract class _VerifyOtpParams implements VerifyOtpParams {
  const factory _VerifyOtpParams({
    required final String email,
    required final String code,
  }) = _$VerifyOtpParamsImpl;

  factory _VerifyOtpParams.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpParamsImplCopyWith<_$VerifyOtpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
