// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
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
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'roles': instance.roles,
      'activeRole': instance.activeRole,
      'driverApprovalInfo': instance.driverApprovalInfo,
    };

_$RoleModelImpl _$$RoleModelImplFromJson(Map<String, dynamic> json) =>
    _$RoleModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
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
  DriverApprovalRequestStatus.under_review: 'under_review',
  DriverApprovalRequestStatus.approved: 'approved',
  DriverApprovalRequestStatus.rejected: 'rejected',
  DriverApprovalRequestStatus.blocked: 'blocked',
};
