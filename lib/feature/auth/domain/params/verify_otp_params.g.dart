// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpParamsImpl _$$VerifyOtpParamsImplFromJson(
  Map<String, dynamic> json,
) => _$VerifyOtpParamsImpl(
  email: json['email'] as String,
  phone: json['phone'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$$VerifyOtpParamsImplToJson(
  _$VerifyOtpParamsImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'phone': instance.phone,
  'code': instance.code,
};
