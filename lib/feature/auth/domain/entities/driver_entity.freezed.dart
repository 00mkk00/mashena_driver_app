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
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DriverProfileEntity get driverProfile => throw _privateConstructorUsedError;

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
    String email,
    String phoneNumber,
    DateTime createdAt,
    DriverProfileEntity driverProfile,
  });

  $DriverProfileEntityCopyWith<$Res> get driverProfile;
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
    Object? email = null,
    Object? phoneNumber = null,
    Object? createdAt = null,
    Object? driverProfile = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            driverProfile: null == driverProfile
                ? _value.driverProfile
                : driverProfile // ignore: cast_nullable_to_non_nullable
                      as DriverProfileEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverProfileEntityCopyWith<$Res> get driverProfile {
    return $DriverProfileEntityCopyWith<$Res>(_value.driverProfile, (value) {
      return _then(_value.copyWith(driverProfile: value) as $Val);
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
    String email,
    String phoneNumber,
    DateTime createdAt,
    DriverProfileEntity driverProfile,
  });

  @override
  $DriverProfileEntityCopyWith<$Res> get driverProfile;
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
    Object? email = null,
    Object? phoneNumber = null,
    Object? createdAt = null,
    Object? driverProfile = null,
  }) {
    return _then(
      _$DriverEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        driverProfile: null == driverProfile
            ? _value.driverProfile
            : driverProfile // ignore: cast_nullable_to_non_nullable
                  as DriverProfileEntity,
      ),
    );
  }
}

/// @nodoc

class _$DriverEntityImpl implements _DriverEntity {
  const _$DriverEntityImpl({
    required this.id,
    required this.email,
    required this.phoneNumber,
    required this.createdAt,
    required this.driverProfile,
  });

  @override
  final int id;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final DateTime createdAt;
  @override
  final DriverProfileEntity driverProfile;

  @override
  String toString() {
    return 'DriverEntity(id: $id, email: $email, phoneNumber: $phoneNumber, createdAt: $createdAt, driverProfile: $driverProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.driverProfile, driverProfile) ||
                other.driverProfile == driverProfile));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    phoneNumber,
    createdAt,
    driverProfile,
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
    required final String email,
    required final String phoneNumber,
    required final DateTime createdAt,
    required final DriverProfileEntity driverProfile,
  }) = _$DriverEntityImpl;

  @override
  int get id;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  DateTime get createdAt;
  @override
  DriverProfileEntity get driverProfile;

  /// Create a copy of DriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverEntityImplCopyWith<_$DriverEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverProfileEntity {
  int get userId => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get approvalStatus => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Create a copy of DriverProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverProfileEntityCopyWith<DriverProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileEntityCopyWith<$Res> {
  factory $DriverProfileEntityCopyWith(
    DriverProfileEntity value,
    $Res Function(DriverProfileEntity) then,
  ) = _$DriverProfileEntityCopyWithImpl<$Res, DriverProfileEntity>;
  @useResult
  $Res call({
    int userId,
    String city,
    String approvalStatus,
    bool isOnline,
    bool isVerified,
  });
}

/// @nodoc
class _$DriverProfileEntityCopyWithImpl<$Res, $Val extends DriverProfileEntity>
    implements $DriverProfileEntityCopyWith<$Res> {
  _$DriverProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? city = null,
    Object? approvalStatus = null,
    Object? isOnline = null,
    Object? isVerified = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            approvalStatus: null == approvalStatus
                ? _value.approvalStatus
                : approvalStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            isOnline: null == isOnline
                ? _value.isOnline
                : isOnline // ignore: cast_nullable_to_non_nullable
                      as bool,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverProfileEntityImplCopyWith<$Res>
    implements $DriverProfileEntityCopyWith<$Res> {
  factory _$$DriverProfileEntityImplCopyWith(
    _$DriverProfileEntityImpl value,
    $Res Function(_$DriverProfileEntityImpl) then,
  ) = __$$DriverProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int userId,
    String city,
    String approvalStatus,
    bool isOnline,
    bool isVerified,
  });
}

/// @nodoc
class __$$DriverProfileEntityImplCopyWithImpl<$Res>
    extends _$DriverProfileEntityCopyWithImpl<$Res, _$DriverProfileEntityImpl>
    implements _$$DriverProfileEntityImplCopyWith<$Res> {
  __$$DriverProfileEntityImplCopyWithImpl(
    _$DriverProfileEntityImpl _value,
    $Res Function(_$DriverProfileEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? city = null,
    Object? approvalStatus = null,
    Object? isOnline = null,
    Object? isVerified = null,
  }) {
    return _then(
      _$DriverProfileEntityImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        approvalStatus: null == approvalStatus
            ? _value.approvalStatus
            : approvalStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        isOnline: null == isOnline
            ? _value.isOnline
            : isOnline // ignore: cast_nullable_to_non_nullable
                  as bool,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$DriverProfileEntityImpl implements _DriverProfileEntity {
  const _$DriverProfileEntityImpl({
    required this.userId,
    required this.city,
    required this.approvalStatus,
    required this.isOnline,
    required this.isVerified,
  });

  @override
  final int userId;
  @override
  final String city;
  @override
  final String approvalStatus;
  @override
  final bool isOnline;
  @override
  final bool isVerified;

  @override
  String toString() {
    return 'DriverProfileEntity(userId: $userId, city: $city, approvalStatus: $approvalStatus, isOnline: $isOnline, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverProfileEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    city,
    approvalStatus,
    isOnline,
    isVerified,
  );

  /// Create a copy of DriverProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverProfileEntityImplCopyWith<_$DriverProfileEntityImpl> get copyWith =>
      __$$DriverProfileEntityImplCopyWithImpl<_$DriverProfileEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _DriverProfileEntity implements DriverProfileEntity {
  const factory _DriverProfileEntity({
    required final int userId,
    required final String city,
    required final String approvalStatus,
    required final bool isOnline,
    required final bool isVerified,
  }) = _$DriverProfileEntityImpl;

  @override
  int get userId;
  @override
  String get city;
  @override
  String get approvalStatus;
  @override
  bool get isOnline;
  @override
  bool get isVerified;

  /// Create a copy of DriverProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverProfileEntityImplCopyWith<_$DriverProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
