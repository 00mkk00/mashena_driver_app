// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverEntity {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<RoleEntity> get roles => throw _privateConstructorUsedError;
  String get activeRole => throw _privateConstructorUsedError;
  DriverApprovalInfoEntity get driverApprovalInfo =>
      throw _privateConstructorUsedError;

  /// Create a copy of DriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverEntityCopyWith<DriverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEntityCopyWith<$Res> {
  factory $DriverEntityCopyWith(
    DriverEntity value,
    $Res Function(DriverEntity) then,
  ) = _$DriverEntityCopyWithImpl<$Res, DriverEntity>;
  @useResult
  $Res call({
    int id,
    String fullName,
    String email,
    String phoneNumber,
    List<RoleEntity> roles,
    String activeRole,
    DriverApprovalInfoEntity driverApprovalInfo,
  });

  $DriverApprovalInfoEntityCopyWith<$Res> get driverApprovalInfo;
}

/// @nodoc
class _$DriverEntityCopyWithImpl<$Res, $Val extends DriverEntity>
    implements $DriverEntityCopyWith<$Res> {
  _$DriverEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverEntity
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
                      as List<RoleEntity>,
            activeRole: null == activeRole
                ? _value.activeRole
                : activeRole // ignore: cast_nullable_to_non_nullable
                      as String,
            driverApprovalInfo: null == driverApprovalInfo
                ? _value.driverApprovalInfo
                : driverApprovalInfo // ignore: cast_nullable_to_non_nullable
                      as DriverApprovalInfoEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverApprovalInfoEntityCopyWith<$Res> get driverApprovalInfo {
    return $DriverApprovalInfoEntityCopyWith<$Res>(_value.driverApprovalInfo, (
      value,
    ) {
      return _then(_value.copyWith(driverApprovalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverEntityImplCopyWith<$Res>
    implements $DriverEntityCopyWith<$Res> {
  factory _$$DriverEntityImplCopyWith(
    _$DriverEntityImpl value,
    $Res Function(_$DriverEntityImpl) then,
  ) = __$$DriverEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String fullName,
    String email,
    String phoneNumber,
    List<RoleEntity> roles,
    String activeRole,
    DriverApprovalInfoEntity driverApprovalInfo,
  });

  @override
  $DriverApprovalInfoEntityCopyWith<$Res> get driverApprovalInfo;
}

/// @nodoc
class __$$DriverEntityImplCopyWithImpl<$Res>
    extends _$DriverEntityCopyWithImpl<$Res, _$DriverEntityImpl>
    implements _$$DriverEntityImplCopyWith<$Res> {
  __$$DriverEntityImplCopyWithImpl(
    _$DriverEntityImpl _value,
    $Res Function(_$DriverEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverEntity
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
      _$DriverEntityImpl(
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
                  as List<RoleEntity>,
        activeRole: null == activeRole
            ? _value.activeRole
            : activeRole // ignore: cast_nullable_to_non_nullable
                  as String,
        driverApprovalInfo: null == driverApprovalInfo
            ? _value.driverApprovalInfo
            : driverApprovalInfo // ignore: cast_nullable_to_non_nullable
                  as DriverApprovalInfoEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverEntityImpl implements _DriverEntity {
  const _$DriverEntityImpl({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    final List<RoleEntity> roles = const [],
    this.activeRole = '',
    this.driverApprovalInfo = const DriverApprovalInfoEntity(),
  }) : _roles = roles;

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
  final List<RoleEntity> _roles;
  @override
  @JsonKey()
  List<RoleEntity> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @JsonKey()
  final String activeRole;
  @override
  @JsonKey()
  final DriverApprovalInfoEntity driverApprovalInfo;

  @override
  String toString() {
    return 'DriverEntity(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, roles: $roles, activeRole: $activeRole, driverApprovalInfo: $driverApprovalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverEntityImpl &&
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

  /// Create a copy of DriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverEntityImplCopyWith<_$DriverEntityImpl> get copyWith =>
      __$$DriverEntityImplCopyWithImpl<_$DriverEntityImpl>(this, _$identity);
}

abstract class _DriverEntity implements DriverEntity {
  const factory _DriverEntity({
    required final int id,
    required final String fullName,
    required final String email,
    required final String phoneNumber,
    final List<RoleEntity> roles,
    final String activeRole,
    final DriverApprovalInfoEntity driverApprovalInfo,
  }) = _$DriverEntityImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  List<RoleEntity> get roles;
  @override
  String get activeRole;
  @override
  DriverApprovalInfoEntity get driverApprovalInfo;

  /// Create a copy of DriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverEntityImplCopyWith<_$DriverEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoleEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleEntityCopyWith<RoleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleEntityCopyWith<$Res> {
  factory $RoleEntityCopyWith(
    RoleEntity value,
    $Res Function(RoleEntity) then,
  ) = _$RoleEntityCopyWithImpl<$Res, RoleEntity>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$RoleEntityCopyWithImpl<$Res, $Val extends RoleEntity>
    implements $RoleEntityCopyWith<$Res> {
  _$RoleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleEntity
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
abstract class _$$RoleEntityImplCopyWith<$Res>
    implements $RoleEntityCopyWith<$Res> {
  factory _$$RoleEntityImplCopyWith(
    _$RoleEntityImpl value,
    $Res Function(_$RoleEntityImpl) then,
  ) = __$$RoleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$RoleEntityImplCopyWithImpl<$Res>
    extends _$RoleEntityCopyWithImpl<$Res, _$RoleEntityImpl>
    implements _$$RoleEntityImplCopyWith<$Res> {
  __$$RoleEntityImplCopyWithImpl(
    _$RoleEntityImpl _value,
    $Res Function(_$RoleEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$RoleEntityImpl(
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

class _$RoleEntityImpl implements _RoleEntity {
  const _$RoleEntityImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'RoleEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleEntityImplCopyWith<_$RoleEntityImpl> get copyWith =>
      __$$RoleEntityImplCopyWithImpl<_$RoleEntityImpl>(this, _$identity);
}

abstract class _RoleEntity implements RoleEntity {
  const factory _RoleEntity({
    required final int id,
    required final String name,
  }) = _$RoleEntityImpl;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleEntityImplCopyWith<_$RoleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverApprovalInfoEntity {
  bool get isVerified => throw _privateConstructorUsedError;
  bool get hasApprovalRequest => throw _privateConstructorUsedError;
  DriverApprovalRequestStatus? get approvalRequestStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of DriverApprovalInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverApprovalInfoEntityCopyWith<DriverApprovalInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverApprovalInfoEntityCopyWith<$Res> {
  factory $DriverApprovalInfoEntityCopyWith(
    DriverApprovalInfoEntity value,
    $Res Function(DriverApprovalInfoEntity) then,
  ) = _$DriverApprovalInfoEntityCopyWithImpl<$Res, DriverApprovalInfoEntity>;
  @useResult
  $Res call({
    bool isVerified,
    bool hasApprovalRequest,
    DriverApprovalRequestStatus? approvalRequestStatus,
  });
}

/// @nodoc
class _$DriverApprovalInfoEntityCopyWithImpl<
  $Res,
  $Val extends DriverApprovalInfoEntity
>
    implements $DriverApprovalInfoEntityCopyWith<$Res> {
  _$DriverApprovalInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverApprovalInfoEntity
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
abstract class _$$DriverApprovalInfoEntityImplCopyWith<$Res>
    implements $DriverApprovalInfoEntityCopyWith<$Res> {
  factory _$$DriverApprovalInfoEntityImplCopyWith(
    _$DriverApprovalInfoEntityImpl value,
    $Res Function(_$DriverApprovalInfoEntityImpl) then,
  ) = __$$DriverApprovalInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isVerified,
    bool hasApprovalRequest,
    DriverApprovalRequestStatus? approvalRequestStatus,
  });
}

/// @nodoc
class __$$DriverApprovalInfoEntityImplCopyWithImpl<$Res>
    extends
        _$DriverApprovalInfoEntityCopyWithImpl<
          $Res,
          _$DriverApprovalInfoEntityImpl
        >
    implements _$$DriverApprovalInfoEntityImplCopyWith<$Res> {
  __$$DriverApprovalInfoEntityImplCopyWithImpl(
    _$DriverApprovalInfoEntityImpl _value,
    $Res Function(_$DriverApprovalInfoEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverApprovalInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = null,
    Object? hasApprovalRequest = null,
    Object? approvalRequestStatus = freezed,
  }) {
    return _then(
      _$DriverApprovalInfoEntityImpl(
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

class _$DriverApprovalInfoEntityImpl implements _DriverApprovalInfoEntity {
  const _$DriverApprovalInfoEntityImpl({
    this.isVerified = false,
    this.hasApprovalRequest = false,
    this.approvalRequestStatus,
  });

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
    return 'DriverApprovalInfoEntity(isVerified: $isVerified, hasApprovalRequest: $hasApprovalRequest, approvalRequestStatus: $approvalRequestStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverApprovalInfoEntityImpl &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.hasApprovalRequest, hasApprovalRequest) ||
                other.hasApprovalRequest == hasApprovalRequest) &&
            (identical(other.approvalRequestStatus, approvalRequestStatus) ||
                other.approvalRequestStatus == approvalRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isVerified,
    hasApprovalRequest,
    approvalRequestStatus,
  );

  /// Create a copy of DriverApprovalInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverApprovalInfoEntityImplCopyWith<_$DriverApprovalInfoEntityImpl>
  get copyWith =>
      __$$DriverApprovalInfoEntityImplCopyWithImpl<
        _$DriverApprovalInfoEntityImpl
      >(this, _$identity);
}

abstract class _DriverApprovalInfoEntity implements DriverApprovalInfoEntity {
  const factory _DriverApprovalInfoEntity({
    final bool isVerified,
    final bool hasApprovalRequest,
    final DriverApprovalRequestStatus? approvalRequestStatus,
  }) = _$DriverApprovalInfoEntityImpl;

  @override
  bool get isVerified;
  @override
  bool get hasApprovalRequest;
  @override
  DriverApprovalRequestStatus? get approvalRequestStatus;

  /// Create a copy of DriverApprovalInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverApprovalInfoEntityImplCopyWith<_$DriverApprovalInfoEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
