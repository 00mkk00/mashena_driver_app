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
  List<RoleModel> get roles => throw _privateConstructorUsedError;
  String get activeRole => throw _privateConstructorUsedError;
  DriverApprovalInfoModel get driverApprovalInfo =>
      throw _privateConstructorUsedError;

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
    List<RoleModel> roles,
    String activeRole,
    DriverApprovalInfoModel driverApprovalInfo,
  });

  $DriverApprovalInfoModelCopyWith<$Res> get driverApprovalInfo;
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
    Object? roles = null,
    Object? activeRole = null,
    Object? driverApprovalInfo = null,
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
    List<RoleModel> roles,
    String activeRole,
    DriverApprovalInfoModel driverApprovalInfo,
  });

  @override
  $DriverApprovalInfoModelCopyWith<$Res> get driverApprovalInfo;
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
    Object? roles = null,
    Object? activeRole = null,
    Object? driverApprovalInfo = null,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverModelImpl implements _DriverModel {
  const _$DriverModelImpl({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    final List<RoleModel> roles = const [],
    this.activeRole = '',
    this.driverApprovalInfo = const DriverApprovalInfoModel(),
  }) : _roles = roles;

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
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
  String toString() {
    return 'DriverModel(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, roles: $roles, activeRole: $activeRole, driverApprovalInfo: $driverApprovalInfo)';
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
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.activeRole, activeRole) ||
                other.activeRole == activeRole) &&
            (identical(other.driverApprovalInfo, driverApprovalInfo) ||
                other.driverApprovalInfo == driverApprovalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    email,
    phoneNumber,
    const DeepCollectionEquality().hash(_roles),
    activeRole,
    driverApprovalInfo,
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
    required final int id,
    required final String fullName,
    required final String email,
    required final String phoneNumber,
    final List<RoleModel> roles,
    final String activeRole,
    final DriverApprovalInfoModel driverApprovalInfo,
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
  List<RoleModel> get roles;
  @override
  String get activeRole;
  @override
  DriverApprovalInfoModel get driverApprovalInfo;

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
  const _$RoleModelImpl({required this.id, required this.name});

  factory _$RoleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleModelImplFromJson(json);

  @override
  final int id;
  @override
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
  const factory _RoleModel({
    required final int id,
    required final String name,
  }) = _$RoleModelImpl;

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
