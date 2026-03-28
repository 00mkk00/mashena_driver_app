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
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DriverProfileModel get driverProfile => throw _privateConstructorUsedError;

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
    String email,
    String phoneNumber,
    DateTime createdAt,
    DriverProfileModel driverProfile,
  });

  $DriverProfileModelCopyWith<$Res> get driverProfile;
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
                      as DriverProfileModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverProfileModelCopyWith<$Res> get driverProfile {
    return $DriverProfileModelCopyWith<$Res>(_value.driverProfile, (value) {
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
    String email,
    String phoneNumber,
    DateTime createdAt,
    DriverProfileModel driverProfile,
  });

  @override
  $DriverProfileModelCopyWith<$Res> get driverProfile;
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
    Object? email = null,
    Object? phoneNumber = null,
    Object? createdAt = null,
    Object? driverProfile = null,
  }) {
    return _then(
      _$DriverModelImpl(
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
                  as DriverProfileModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverModelImpl implements _DriverModel {
  const _$DriverModelImpl({
    required this.id,
    required this.email,
    required this.phoneNumber,
    required this.createdAt,
    required this.driverProfile,
  });

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final DateTime createdAt;
  @override
  final DriverProfileModel driverProfile;

  @override
  String toString() {
    return 'DriverModel(id: $id, email: $email, phoneNumber: $phoneNumber, createdAt: $createdAt, driverProfile: $driverProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.driverProfile, driverProfile) ||
                other.driverProfile == driverProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    phoneNumber,
    createdAt,
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
    required final int id,
    required final String email,
    required final String phoneNumber,
    required final DateTime createdAt,
    required final DriverProfileModel driverProfile,
  }) = _$DriverModelImpl;

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$DriverModelImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  DateTime get createdAt;
  @override
  DriverProfileModel get driverProfile;

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) {
  return _DriverProfileModel.fromJson(json);
}

/// @nodoc
mixin _$DriverProfileModel {
  int get userId => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get approvalStatus => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

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
    int userId,
    String city,
    String approvalStatus,
    bool isOnline,
    bool isVerified,
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
abstract class _$$DriverProfileModelImplCopyWith<$Res>
    implements $DriverProfileModelCopyWith<$Res> {
  factory _$$DriverProfileModelImplCopyWith(
    _$DriverProfileModelImpl value,
    $Res Function(_$DriverProfileModelImpl) then,
  ) = __$$DriverProfileModelImplCopyWithImpl<$Res>;
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
    Object? userId = null,
    Object? city = null,
    Object? approvalStatus = null,
    Object? isOnline = null,
    Object? isVerified = null,
  }) {
    return _then(
      _$DriverProfileModelImpl(
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
@JsonSerializable()
class _$DriverProfileModelImpl implements _DriverProfileModel {
  const _$DriverProfileModelImpl({
    required this.userId,
    required this.city,
    required this.approvalStatus,
    required this.isOnline,
    required this.isVerified,
  });

  factory _$DriverProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverProfileModelImplFromJson(json);

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
    return 'DriverProfileModel(userId: $userId, city: $city, approvalStatus: $approvalStatus, isOnline: $isOnline, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverProfileModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    city,
    approvalStatus,
    isOnline,
    isVerified,
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
    required final int userId,
    required final String city,
    required final String approvalStatus,
    required final bool isOnline,
    required final bool isVerified,
  }) = _$DriverProfileModelImpl;

  factory _DriverProfileModel.fromJson(Map<String, dynamic> json) =
      _$DriverProfileModelImpl.fromJson;

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

  /// Create a copy of DriverProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverProfileModelImplCopyWith<_$DriverProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
