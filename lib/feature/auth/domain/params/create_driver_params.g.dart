// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_driver_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDriverParamsImpl _$$CreateDriverParamsImplFromJson(
  Map<String, dynamic> json,
) => _$CreateDriverParamsImpl(
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  password: json['password'] as String,
  city: json['city'] as String?,
  file: json['file'] as String?,
);

Map<String, dynamic> _$$CreateDriverParamsImplToJson(
  _$CreateDriverParamsImpl instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'password': instance.password,
  'city': instance.city,
  'file': instance.file,
};
