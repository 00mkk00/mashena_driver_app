// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      fullName: json['fullName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)
              ?.map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activeRole: json['activeRole'] as String? ?? '',
      driverApprovalInfo: json['driverApprovalInfo'] == null
          ? const DriverApprovalInfoModel()
          : DriverApprovalInfoModel.fromJson(
              json['driverApprovalInfo'] as Map<String, dynamic>,
            ),
      driverProfile: json['driverProfile'] == null
          ? null
          : DriverProfileModel.fromJson(
              json['driverProfile'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'roles': instance.roles,
      'activeRole': instance.activeRole,
      'driverApprovalInfo': instance.driverApprovalInfo,
      'driverProfile': instance.driverProfile,
    };

_$RoleModelImpl _$$RoleModelImplFromJson(Map<String, dynamic> json) =>
    _$RoleModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$RoleModelImplToJson(_$RoleModelImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$DriverApprovalInfoModelImpl _$$DriverApprovalInfoModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverApprovalInfoModelImpl(
  isVerified: json['isVerified'] as bool? ?? false,
  hasApprovalRequest: json['hasApprovalRequest'] as bool? ?? false,
  approvalRequestStatus: $enumDecodeNullable(
    _$DriverApprovalRequestStatusEnumMap,
    json['approvalRequestStatus'],
  ),
);

Map<String, dynamic> _$$DriverApprovalInfoModelImplToJson(
  _$DriverApprovalInfoModelImpl instance,
) => <String, dynamic>{
  'isVerified': instance.isVerified,
  'hasApprovalRequest': instance.hasApprovalRequest,
  'approvalRequestStatus':
      _$DriverApprovalRequestStatusEnumMap[instance.approvalRequestStatus],
};

const _$DriverApprovalRequestStatusEnumMap = {
  DriverApprovalRequestStatus.submitted: 'submitted',
  DriverApprovalRequestStatus.under_review: 'underReview',
  DriverApprovalRequestStatus.approved: 'approved',
  DriverApprovalRequestStatus.rejected: 'rejected',
  DriverApprovalRequestStatus.blocked: 'blocked',
};

_$DriverProfileModelImpl _$$DriverProfileModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverProfileModelImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  userId: (json['userId'] as num?)?.toInt() ?? 0,
  city: json['city'] as String?,
  approvalStatus: json['approvalStatus'] as String?,
  isOnline: json['isOnline'] as bool? ?? false,
  emailVerifiedAt: json['emailVerifiedAt'] as String?,
  phoneVerifiedAt: json['phoneVerifiedAt'] as String?,
  lastLoginAt: json['lastLoginAt'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$$DriverProfileModelImplToJson(
  _$DriverProfileModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'city': instance.city,
  'approvalStatus': instance.approvalStatus,
  'isOnline': instance.isOnline,
  'emailVerifiedAt': instance.emailVerifiedAt,
  'phoneVerifiedAt': instance.phoneVerifiedAt,
  'lastLoginAt': instance.lastLoginAt,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
