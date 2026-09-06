// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) {
  return _DriverModel.fromJson(json);
}

/// @nodoc
mixin _$DriverModel {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<RoleModel> get roles => throw _privateConstructorUsedError;
  String get activeRole => throw _privateConstructorUsedError;
  DriverApprovalInfoModel get driverApprovalInfo =>
      throw _privateConstructorUsedError;
  DriverProfileModel? get driverProfile => throw _privateConstructorUsedError;

  /// Serializes this DriverModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverModelCopyWith<DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverModelCopyWith<$Res> {
  factory $DriverModelCopyWith(
    DriverModel value,
    $Res Function(DriverModel) then,
  ) = _$DriverModelCopyWithImpl<$Res, DriverModel>;
  @useResult
  $Res call({
    int id,
    String fullName,
    String email,
    String phoneNumber,
    String avatarUrl,
    String? createdAt,
    String? updatedAt,
    List<RoleModel> roles,
    String activeRole,
    DriverApprovalInfoModel driverApprovalInfo,
    DriverProfileModel? driverProfile,
  });

  $DriverApprovalInfoModelCopyWith<$Res> get driverApprovalInfo;
  $DriverProfileModelCopyWith<$Res>? get driverProfile;
}

/// @nodoc
class _$DriverModelCopyWithImpl<$Res, $Val extends DriverModel>
    implements $DriverModelCopyWith<$Res> {
  _$DriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? avatarUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? roles = null,
    Object? activeRole = null,
    Object? driverApprovalInfo = null,
    Object? driverProfile = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
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
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            roles: null == roles
                ? _value.roles
                : roles // ignore: cast_nullable_to_non_nullable
                      as List<RoleModel>,
            activeRole: null == activeRole
                ? _value.activeRole
                : activeRole // ignore: cast_nullable_to_non_nullable
                      as String,
            driverApprovalInfo: null == driverApprovalInfo
                ? _value.driverApprovalInfo
                : driverApprovalInfo // ignore: cast_nullable_to_non_nullable
                      as DriverApprovalInfoModel,
            driverProfile: freezed == driverProfile
                ? _value.driverProfile
                : driverProfile // ignore: cast_nullable_to_non_nullable
                      as DriverProfileModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverApprovalInfoModelCopyWith<$Res> get driverApprovalInfo {
    return $DriverApprovalInfoModelCopyWith<$Res>(_value.driverApprovalInfo, (
      value,
    ) {
      return _then(_value.copyWith(driverApprovalInfo: value) as $Val);
    });
  }

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverProfileModelCopyWith<$Res>? get driverProfile {
    if (_value.driverProfile == null) {
      return null;
    }

    return $DriverProfileModelCopyWith<$Res>(_value.driverProfile!, (value) {
      return _then(_value.copyWith(driverProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverModelImplCopyWith<$Res>
    implements $DriverModelCopyWith<$Res> {
  factory _$$DriverModelImplCopyWith(
    _$DriverModelImpl value,
    $Res Function(_$DriverModelImpl) then,
  ) = __$$DriverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String fullName,
    String email,
    String phoneNumber,
    String avatarUrl,
    String? createdAt,
    String? updatedAt,
    List<RoleModel> roles,
    String activeRole,
    DriverApprovalInfoModel driverApprovalInfo,
    DriverProfileModel? driverProfile,
  });

  @override
  $DriverApprovalInfoModelCopyWith<$Res> get driverApprovalInfo;
  @override
  $DriverProfileModelCopyWith<$Res>? get driverProfile;
}

/// @nodoc
class __$$DriverModelImplCopyWithImpl<$Res>
    extends _$DriverModelCopyWithImpl<$Res, _$DriverModelImpl>
    implements _$$DriverModelImplCopyWith<$Res> {
  __$$DriverModelImplCopyWithImpl(
    _$DriverModelImpl _value,
    $Res Function(_$DriverModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? avatarUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? roles = null,
    Object? activeRole = null,
    Object? driverApprovalInfo = null,
    Object? driverProfile = freezed,
  }) {
    return _then(
      _$DriverModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
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
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        roles: null == roles
            ? _value._roles
            : roles // ignore: cast_nullable_to_non_nullable
                  as List<RoleModel>,
        activeRole: null == activeRole
            ? _value.activeRole
            : activeRole // ignore: cast_nullable_to_non_nullable
                  as String,
        driverApprovalInfo: null == driverApprovalInfo
            ? _value.driverApprovalInfo
            : driverApprovalInfo // ignore: cast_nullable_to_non_nullable
                  as DriverApprovalInfoModel,
        driverProfile: freezed == driverProfile
            ? _value.driverProfile
            : driverProfile // ignore: cast_nullable_to_non_nullable
                  as DriverProfileModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverModelImpl implements _DriverModel {
  const _$DriverModelImpl({
    this.id = 0,
    this.fullName = '',
    this.email = '',
    this.phoneNumber = '',
    this.avatarUrl = '',
    this.createdAt,
    this.updatedAt,
    final List<RoleModel> roles = const [],
    this.activeRole = '',
    this.driverApprovalInfo = const DriverApprovalInfoModel(),
    this.driverProfile,
  }) : _roles = roles;

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  final List<RoleModel> _roles;
  @override
  @JsonKey()
  List<RoleModel> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @JsonKey()
  final String activeRole;
  @override
  @JsonKey()
  final DriverApprovalInfoModel driverApprovalInfo;
  @override
  final DriverProfileModel? driverProfile;

  @override
  String toString() {
    return 'DriverModel(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, createdAt: $createdAt, updatedAt: $updatedAt, roles: $roles, activeRole: $activeRole, driverApprovalInfo: $driverApprovalInfo, driverProfile: $driverProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.activeRole, activeRole) ||
                other.activeRole == activeRole) &&
            (identical(other.driverApprovalInfo, driverApprovalInfo) ||
                other.driverApprovalInfo == driverApprovalInfo) &&
            (identical(other.driverProfile, driverProfile) ||
                other.driverProfile == driverProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    email,
    phoneNumber,
    avatarUrl,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_roles),
    activeRole,
    driverApprovalInfo,
    driverProfile,
  );

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      __$$DriverModelImplCopyWithImpl<_$DriverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverModelImplToJson(this);
  }
}

abstract class _DriverModel implements DriverModel {
  const factory _DriverModel({
    final int id,
    final String fullName,
    final String email,
    final String phoneNumber,
    final String avatarUrl,
    final String? createdAt,
    final String? updatedAt,
    final List<RoleModel> roles,
    final String activeRole,
    final DriverApprovalInfoModel driverApprovalInfo,
    final DriverProfileModel? driverProfile,
  }) = _$DriverModelImpl;

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$DriverModelImpl.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get avatarUrl;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  List<RoleModel> get roles;
  @override
  String get activeRole;
  @override
  DriverApprovalInfoModel get driverApprovalInfo;
  @override
  DriverProfileModel? get driverProfile;

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) {
  return _RoleModel.fromJson(json);
}

/// @nodoc
mixin _$RoleModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RoleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleModelCopyWith<RoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleModelCopyWith<$Res> {
  factory $RoleModelCopyWith(RoleModel value, $Res Function(RoleModel) then) =
      _$RoleModelCopyWithImpl<$Res, RoleModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$RoleModelCopyWithImpl<$Res, $Val extends RoleModel>
    implements $RoleModelCopyWith<$Res> {
  _$RoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleModelImplCopyWith<$Res>
    implements $RoleModelCopyWith<$Res> {
  factory _$$RoleModelImplCopyWith(
    _$RoleModelImpl value,
    $Res Function(_$RoleModelImpl) then,
  ) = __$$RoleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$RoleModelImplCopyWithImpl<$Res>
    extends _$RoleModelCopyWithImpl<$Res, _$RoleModelImpl>
    implements _$$RoleModelImplCopyWith<$Res> {
  __$$RoleModelImplCopyWithImpl(
    _$RoleModelImpl _value,
    $Res Function(_$RoleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$RoleModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleModelImpl implements _RoleModel {
  const _$RoleModelImpl({required this.id, this.name = ''});

  factory _$RoleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'RoleModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleModelImplCopyWith<_$RoleModelImpl> get copyWith =>
      __$$RoleModelImplCopyWithImpl<_$RoleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleModelImplToJson(this);
  }
}

abstract class _RoleModel implements RoleModel {
  const factory _RoleModel({required final int id, final String name}) =
      _$RoleModelImpl;

  factory _RoleModel.fromJson(Map<String, dynamic> json) =
      _$RoleModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of RoleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleModelImplCopyWith<_$RoleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverApprovalInfoModel _$DriverApprovalInfoModelFromJson(
  Map<String, dynamic> json,
) {
  return _DriverApprovalInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DriverApprovalInfoModel {
  bool get isVerified => throw _privateConstructorUsedError;
  bool get hasApprovalRequest => throw _privateConstructorUsedError;
  DriverApprovalRequestStatus? get approvalRequestStatus =>
      throw _privateConstructorUsedError;

  /// Serializes this DriverApprovalInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverApprovalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverApprovalInfoModelCopyWith<DriverApprovalInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverApprovalInfoModelCopyWith<$Res> {
  factory $DriverApprovalInfoModelCopyWith(
    DriverApprovalInfoModel value,
    $Res Function(DriverApprovalInfoModel) then,
  ) = _$DriverApprovalInfoModelCopyWithImpl<$Res, DriverApprovalInfoModel>;
  @useResult
  $Res call({
    bool isVerified,
    bool hasApprovalRequest,
    DriverApprovalRequestStatus? approvalRequestStatus,
  });
}

/// @nodoc
class _$DriverApprovalInfoModelCopyWithImpl<
  $Res,
  $Val extends DriverApprovalInfoModel
>
    implements $DriverApprovalInfoModelCopyWith<$Res> {
  _$DriverApprovalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverApprovalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = null,
    Object? hasApprovalRequest = null,
    Object? approvalRequestStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasApprovalRequest: null == hasApprovalRequest
                ? _value.hasApprovalRequest
                : hasApprovalRequest // ignore: cast_nullable_to_non_nullable
                      as bool,
            approvalRequestStatus: freezed == approvalRequestStatus
                ? _value.approvalRequestStatus
                : approvalRequestStatus // ignore: cast_nullable_to_non_nullable
                      as DriverApprovalRequestStatus?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverApprovalInfoModelImplCopyWith<$Res>
    implements $DriverApprovalInfoModelCopyWith<$Res> {
  factory _$$DriverApprovalInfoModelImplCopyWith(
    _$DriverApprovalInfoModelImpl value,
    $Res Function(_$DriverApprovalInfoModelImpl) then,
  ) = __$$DriverApprovalInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isVerified,
    bool hasApprovalRequest,
    DriverApprovalRequestStatus? approvalRequestStatus,
  });
}

/// @nodoc
class __$$DriverApprovalInfoModelImplCopyWithImpl<$Res>
    extends
        _$DriverApprovalInfoModelCopyWithImpl<
          $Res,
          _$DriverApprovalInfoModelImpl
        >
    implements _$$DriverApprovalInfoModelImplCopyWith<$Res> {
  __$$DriverApprovalInfoModelImplCopyWithImpl(
    _$DriverApprovalInfoModelImpl _value,
    $Res Function(_$DriverApprovalInfoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverApprovalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = null,
    Object? hasApprovalRequest = null,
    Object? approvalRequestStatus = freezed,
  }) {
    return _then(
      _$DriverApprovalInfoModelImpl(
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasApprovalRequest: null == hasApprovalRequest
            ? _value.hasApprovalRequest
            : hasApprovalRequest // ignore: cast_nullable_to_non_nullable
                  as bool,
        approvalRequestStatus: freezed == approvalRequestStatus
            ? _value.approvalRequestStatus
            : approvalRequestStatus // ignore: cast_nullable_to_non_nullable
                  as DriverApprovalRequestStatus?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverApprovalInfoModelImpl implements _DriverApprovalInfoModel {
  const _$DriverApprovalInfoModelImpl({
    this.isVerified = false,
    this.hasApprovalRequest = false,
    this.approvalRequestStatus,
  });

  factory _$DriverApprovalInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverApprovalInfoModelImplFromJson(json);

  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool hasApprovalRequest;
  @override
  final DriverApprovalRequestStatus? approvalRequestStatus;

  @override
  String toString() {
    return 'DriverApprovalInfoModel(isVerified: $isVerified, hasApprovalRequest: $hasApprovalRequest, approvalRequestStatus: $approvalRequestStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverApprovalInfoModelImpl &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.hasApprovalRequest, hasApprovalRequest) ||
                other.hasApprovalRequest == hasApprovalRequest) &&
            (identical(other.approvalRequestStatus, approvalRequestStatus) ||
                other.approvalRequestStatus == approvalRequestStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isVerified,
    hasApprovalRequest,
    approvalRequestStatus,
  );

  /// Create a copy of DriverApprovalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverApprovalInfoModelImplCopyWith<_$DriverApprovalInfoModelImpl>
  get copyWith =>
      __$$DriverApprovalInfoModelImplCopyWithImpl<
        _$DriverApprovalInfoModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverApprovalInfoModelImplToJson(this);
  }
}

abstract class _DriverApprovalInfoModel implements DriverApprovalInfoModel {
  const factory _DriverApprovalInfoModel({
    final bool isVerified,
    final bool hasApprovalRequest,
    final DriverApprovalRequestStatus? approvalRequestStatus,
  }) = _$DriverApprovalInfoModelImpl;

  factory _DriverApprovalInfoModel.fromJson(Map<String, dynamic> json) =
      _$DriverApprovalInfoModelImpl.fromJson;

  @override
  bool get isVerified;
  @override
  bool get hasApprovalRequest;
  @override
  DriverApprovalRequestStatus? get approvalRequestStatus;

  /// Create a copy of DriverApprovalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverApprovalInfoModelImplCopyWith<_$DriverApprovalInfoModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) {
  return _DriverProfileModel.fromJson(json);
}

/// @nodoc
mixin _$DriverProfileModel {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  String? get phoneVerifiedAt => throw _privateConstructorUsedError;
  String? get lastLoginAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DriverProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverProfileModelCopyWith<DriverProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileModelCopyWith<$Res> {
  factory $DriverProfileModelCopyWith(
    DriverProfileModel value,
    $Res Function(DriverProfileModel) then,
  ) = _$DriverProfileModelCopyWithImpl<$Res, DriverProfileModel>;
  @useResult
  $Res call({
    int id,
    int userId,
    String? city,
    String? approvalStatus,
    bool isOnline,
    String? emailVerifiedAt,
    String? phoneVerifiedAt,
    String? lastLoginAt,
    String? createdAt,
    String? updatedAt,
  });
}

/// @nodoc
class _$DriverProfileModelCopyWithImpl<$Res, $Val extends DriverProfileModel>
    implements $DriverProfileModelCopyWith<$Res> {
  _$DriverProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? city = freezed,
    Object? approvalStatus = freezed,
    Object? isOnline = null,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? lastLoginAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            approvalStatus: freezed == approvalStatus
                ? _value.approvalStatus
                : approvalStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            isOnline: null == isOnline
                ? _value.isOnline
                : isOnline // ignore: cast_nullable_to_non_nullable
                      as bool,
            emailVerifiedAt: freezed == emailVerifiedAt
                ? _value.emailVerifiedAt
                : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneVerifiedAt: freezed == phoneVerifiedAt
                ? _value.phoneVerifiedAt
                : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastLoginAt: freezed == lastLoginAt
                ? _value.lastLoginAt
                : lastLoginAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverProfileModelImplCopyWith<$Res>
    implements $DriverProfileModelCopyWith<$Res> {
  factory _$$DriverProfileModelImplCopyWith(
    _$DriverProfileModelImpl value,
    $Res Function(_$DriverProfileModelImpl) then,
  ) = __$$DriverProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    String? city,
    String? approvalStatus,
    bool isOnline,
    String? emailVerifiedAt,
    String? phoneVerifiedAt,
    String? lastLoginAt,
    String? createdAt,
    String? updatedAt,
  });
}

/// @nodoc
class __$$DriverProfileModelImplCopyWithImpl<$Res>
    extends _$DriverProfileModelCopyWithImpl<$Res, _$DriverProfileModelImpl>
    implements _$$DriverProfileModelImplCopyWith<$Res> {
  __$$DriverProfileModelImplCopyWithImpl(
    _$DriverProfileModelImpl _value,
    $Res Function(_$DriverProfileModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? city = freezed,
    Object? approvalStatus = freezed,
    Object? isOnline = null,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? lastLoginAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$DriverProfileModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        approvalStatus: freezed == approvalStatus
            ? _value.approvalStatus
            : approvalStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        isOnline: null == isOnline
            ? _value.isOnline
            : isOnline // ignore: cast_nullable_to_non_nullable
                  as bool,
        emailVerifiedAt: freezed == emailVerifiedAt
            ? _value.emailVerifiedAt
            : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneVerifiedAt: freezed == phoneVerifiedAt
            ? _value.phoneVerifiedAt
            : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastLoginAt: freezed == lastLoginAt
            ? _value.lastLoginAt
            : lastLoginAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverProfileModelImpl implements _DriverProfileModel {
  const _$DriverProfileModelImpl({
    this.id = 0,
    this.userId = 0,
    this.city,
    this.approvalStatus,
    this.isOnline = false,
    this.emailVerifiedAt,
    this.phoneVerifiedAt,
    this.lastLoginAt,
    this.createdAt,
    this.updatedAt,
  });

  factory _$DriverProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverProfileModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  final String? city;
  @override
  final String? approvalStatus;
  @override
  @JsonKey()
  final bool isOnline;
  @override
  final String? emailVerifiedAt;
  @override
  final String? phoneVerifiedAt;
  @override
  final String? lastLoginAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'DriverProfileModel(id: $id, userId: $userId, city: $city, approvalStatus: $approvalStatus, isOnline: $isOnline, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, lastLoginAt: $lastLoginAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.phoneVerifiedAt, phoneVerifiedAt) ||
                other.phoneVerifiedAt == phoneVerifiedAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    city,
    approvalStatus,
    isOnline,
    emailVerifiedAt,
    phoneVerifiedAt,
    lastLoginAt,
    createdAt,
    updatedAt,
  );

  /// Create a copy of DriverProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverProfileModelImplCopyWith<_$DriverProfileModelImpl> get copyWith =>
      __$$DriverProfileModelImplCopyWithImpl<_$DriverProfileModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverProfileModelImplToJson(this);
  }
}

abstract class _DriverProfileModel implements DriverProfileModel {
  const factory _DriverProfileModel({
    final int id,
    final int userId,
    final String? city,
    final String? approvalStatus,
    final bool isOnline,
    final String? emailVerifiedAt,
    final String? phoneVerifiedAt,
    final String? lastLoginAt,
    final String? createdAt,
    final String? updatedAt,
  }) = _$DriverProfileModelImpl;

  factory _DriverProfileModel.fromJson(Map<String, dynamic> json) =
      _$DriverProfileModelImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String? get city;
  @override
  String? get approvalStatus;
  @override
  bool get isOnline;
  @override
  String? get emailVerifiedAt;
  @override
  String? get phoneVerifiedAt;
  @override
  String? get lastLoginAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of DriverProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverProfileModelImplCopyWith<_$DriverProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
