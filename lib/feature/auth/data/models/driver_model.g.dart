// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      driverProfile: DriverProfileModel.fromJson(
        json['driverProfile'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt.toIso8601String(),
      'driverProfile': instance.driverProfile,
    };

_$DriverProfileModelImpl _$$DriverProfileModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverProfileModelImpl(
  userId: (json['userId'] as num).toInt(),
  city: json['city'] as String,
  approvalStatus: json['approvalStatus'] as String,
  isOnline: json['isOnline'] as bool,
  isVerified: json['isVerified'] as bool,
);

Map<String, dynamic> _$$DriverProfileModelImplToJson(
  _$DriverProfileModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'city': instance.city,
  'approvalStatus': instance.approvalStatus,
  'isOnline': instance.isOnline,
  'isVerified': instance.isVerified,
};
