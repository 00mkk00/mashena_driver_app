// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationResponseModel _$NotificationResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponseModel {
  int? get count => throw _privateConstructorUsedError;
  int? get unreadCount => throw _privateConstructorUsedError;
  List<NotificationItemModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this NotificationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseModelCopyWith<$Res> {
  factory $NotificationResponseModelCopyWith(
    NotificationResponseModel value,
    $Res Function(NotificationResponseModel) then,
  ) = _$NotificationResponseModelCopyWithImpl<$Res, NotificationResponseModel>;
  @useResult
  $Res call({int? count, int? unreadCount, List<NotificationItemModel>? data});
}

/// @nodoc
class _$NotificationResponseModelCopyWithImpl<
  $Res,
  $Val extends NotificationResponseModel
>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? unreadCount = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _value.copyWith(
            count: freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int?,
            unreadCount: freezed == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<NotificationItemModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationResponseModelImplCopyWith<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  factory _$$NotificationResponseModelImplCopyWith(
    _$NotificationResponseModelImpl value,
    $Res Function(_$NotificationResponseModelImpl) then,
  ) = __$$NotificationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, int? unreadCount, List<NotificationItemModel>? data});
}

/// @nodoc
class __$$NotificationResponseModelImplCopyWithImpl<$Res>
    extends
        _$NotificationResponseModelCopyWithImpl<
          $Res,
          _$NotificationResponseModelImpl
        >
    implements _$$NotificationResponseModelImplCopyWith<$Res> {
  __$$NotificationResponseModelImplCopyWithImpl(
    _$NotificationResponseModelImpl _value,
    $Res Function(_$NotificationResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? unreadCount = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _$NotificationResponseModelImpl(
        count: freezed == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int?,
        unreadCount: freezed == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<NotificationItemModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationResponseModelImpl implements _NotificationResponseModel {
  const _$NotificationResponseModelImpl({
    this.count,
    this.unreadCount,
    final List<NotificationItemModel>? data,
  }) : _data = data;

  factory _$NotificationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationResponseModelImplFromJson(json);

  @override
  final int? count;
  @override
  final int? unreadCount;
  final List<NotificationItemModel>? _data;
  @override
  List<NotificationItemModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationResponseModel(count: $count, unreadCount: $unreadCount, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    unreadCount,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationResponseModelImplCopyWith<_$NotificationResponseModelImpl>
  get copyWith =>
      __$$NotificationResponseModelImplCopyWithImpl<
        _$NotificationResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationResponseModelImplToJson(this);
  }
}

abstract class _NotificationResponseModel implements NotificationResponseModel {
  const factory _NotificationResponseModel({
    final int? count,
    final int? unreadCount,
    final List<NotificationItemModel>? data,
  }) = _$NotificationResponseModelImpl;

  factory _NotificationResponseModel.fromJson(Map<String, dynamic> json) =
      _$NotificationResponseModelImpl.fromJson;

  @override
  int? get count;
  @override
  int? get unreadCount;
  @override
  List<NotificationItemModel>? get data;

  /// Create a copy of NotificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationResponseModelImplCopyWith<_$NotificationResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

NotificationItemModel _$NotificationItemModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationItemModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationItemModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(
    fromJson: NotificationType.fromJson,
    unknownEnumValue: NotificationType.unknown,
  )
  NotificationType? get type => throw _privateConstructorUsedError;
  NotificationMetadataModel? get metadata => throw _privateConstructorUsedError;
  bool? get isRead => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationItemModelCopyWith<NotificationItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationItemModelCopyWith<$Res> {
  factory $NotificationItemModelCopyWith(
    NotificationItemModel value,
    $Res Function(NotificationItemModel) then,
  ) = _$NotificationItemModelCopyWithImpl<$Res, NotificationItemModel>;
  @useResult
  $Res call({
    int? id,
    int? userId,
    String? title,
    String? body,
    @JsonKey(
      fromJson: NotificationType.fromJson,
      unknownEnumValue: NotificationType.unknown,
    )
    NotificationType? type,
    NotificationMetadataModel? metadata,
    bool? isRead,
    String? createdAt,
    String? updatedAt,
  });

  $NotificationMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$NotificationItemModelCopyWithImpl<
  $Res,
  $Val extends NotificationItemModel
>
    implements $NotificationItemModelCopyWith<$Res> {
  _$NotificationItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as NotificationType?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as NotificationMetadataModel?,
            isRead: freezed == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool?,
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

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationMetadataModelCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $NotificationMetadataModelCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationItemModelImplCopyWith<$Res>
    implements $NotificationItemModelCopyWith<$Res> {
  factory _$$NotificationItemModelImplCopyWith(
    _$NotificationItemModelImpl value,
    $Res Function(_$NotificationItemModelImpl) then,
  ) = __$$NotificationItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? userId,
    String? title,
    String? body,
    @JsonKey(
      fromJson: NotificationType.fromJson,
      unknownEnumValue: NotificationType.unknown,
    )
    NotificationType? type,
    NotificationMetadataModel? metadata,
    bool? isRead,
    String? createdAt,
    String? updatedAt,
  });

  @override
  $NotificationMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$NotificationItemModelImplCopyWithImpl<$Res>
    extends
        _$NotificationItemModelCopyWithImpl<$Res, _$NotificationItemModelImpl>
    implements _$$NotificationItemModelImplCopyWith<$Res> {
  __$$NotificationItemModelImplCopyWithImpl(
    _$NotificationItemModelImpl _value,
    $Res Function(_$NotificationItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$NotificationItemModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as NotificationType?,
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as NotificationMetadataModel?,
        isRead: freezed == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool?,
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
class _$NotificationItemModelImpl implements _NotificationItemModel {
  const _$NotificationItemModelImpl({
    this.id,
    this.userId,
    this.title,
    this.body,
    @JsonKey(
      fromJson: NotificationType.fromJson,
      unknownEnumValue: NotificationType.unknown,
    )
    this.type,
    this.metadata,
    this.isRead,
    this.createdAt,
    this.updatedAt,
  });

  factory _$NotificationItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? title;
  @override
  final String? body;
  @override
  @JsonKey(
    fromJson: NotificationType.fromJson,
    unknownEnumValue: NotificationType.unknown,
  )
  final NotificationType? type;
  @override
  final NotificationMetadataModel? metadata;
  @override
  final bool? isRead;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'NotificationItemModel(id: $id, userId: $userId, title: $title, body: $body, type: $type, metadata: $metadata, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
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
    title,
    body,
    type,
    metadata,
    isRead,
    createdAt,
    updatedAt,
  );

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationItemModelImplCopyWith<_$NotificationItemModelImpl>
  get copyWith =>
      __$$NotificationItemModelImplCopyWithImpl<_$NotificationItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationItemModelImplToJson(this);
  }
}

abstract class _NotificationItemModel implements NotificationItemModel {
  const factory _NotificationItemModel({
    final int? id,
    final int? userId,
    final String? title,
    final String? body,
    @JsonKey(
      fromJson: NotificationType.fromJson,
      unknownEnumValue: NotificationType.unknown,
    )
    final NotificationType? type,
    final NotificationMetadataModel? metadata,
    final bool? isRead,
    final String? createdAt,
    final String? updatedAt,
  }) = _$NotificationItemModelImpl;

  factory _NotificationItemModel.fromJson(Map<String, dynamic> json) =
      _$NotificationItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(
    fromJson: NotificationType.fromJson,
    unknownEnumValue: NotificationType.unknown,
  )
  NotificationType? get type;
  @override
  NotificationMetadataModel? get metadata;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationItemModelImplCopyWith<_$NotificationItemModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

NotificationMetadataModel _$NotificationMetadataModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationMetadataModel {
  int? get tripId => throw _privateConstructorUsedError;
  int? get rideRequestId => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  int? get walletTransactionId => throw _privateConstructorUsedError;
  int? get driverProfileId => throw _privateConstructorUsedError;

  /// Serializes this NotificationMetadataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationMetadataModelCopyWith<NotificationMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMetadataModelCopyWith<$Res> {
  factory $NotificationMetadataModelCopyWith(
    NotificationMetadataModel value,
    $Res Function(NotificationMetadataModel) then,
  ) = _$NotificationMetadataModelCopyWithImpl<$Res, NotificationMetadataModel>;
  @useResult
  $Res call({
    int? tripId,
    int? rideRequestId,
    num? amount,
    int? walletTransactionId,
    int? driverProfileId,
  });
}

/// @nodoc
class _$NotificationMetadataModelCopyWithImpl<
  $Res,
  $Val extends NotificationMetadataModel
>
    implements $NotificationMetadataModelCopyWith<$Res> {
  _$NotificationMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = freezed,
    Object? rideRequestId = freezed,
    Object? amount = freezed,
    Object? walletTransactionId = freezed,
    Object? driverProfileId = freezed,
  }) {
    return _then(
      _value.copyWith(
            tripId: freezed == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int?,
            rideRequestId: freezed == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as num?,
            walletTransactionId: freezed == walletTransactionId
                ? _value.walletTransactionId
                : walletTransactionId // ignore: cast_nullable_to_non_nullable
                      as int?,
            driverProfileId: freezed == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationMetadataModelImplCopyWith<$Res>
    implements $NotificationMetadataModelCopyWith<$Res> {
  factory _$$NotificationMetadataModelImplCopyWith(
    _$NotificationMetadataModelImpl value,
    $Res Function(_$NotificationMetadataModelImpl) then,
  ) = __$$NotificationMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? tripId,
    int? rideRequestId,
    num? amount,
    int? walletTransactionId,
    int? driverProfileId,
  });
}

/// @nodoc
class __$$NotificationMetadataModelImplCopyWithImpl<$Res>
    extends
        _$NotificationMetadataModelCopyWithImpl<
          $Res,
          _$NotificationMetadataModelImpl
        >
    implements _$$NotificationMetadataModelImplCopyWith<$Res> {
  __$$NotificationMetadataModelImplCopyWithImpl(
    _$NotificationMetadataModelImpl _value,
    $Res Function(_$NotificationMetadataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = freezed,
    Object? rideRequestId = freezed,
    Object? amount = freezed,
    Object? walletTransactionId = freezed,
    Object? driverProfileId = freezed,
  }) {
    return _then(
      _$NotificationMetadataModelImpl(
        tripId: freezed == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int?,
        rideRequestId: freezed == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as num?,
        walletTransactionId: freezed == walletTransactionId
            ? _value.walletTransactionId
            : walletTransactionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        driverProfileId: freezed == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationMetadataModelImpl implements _NotificationMetadataModel {
  const _$NotificationMetadataModelImpl({
    this.tripId,
    this.rideRequestId,
    this.amount,
    this.walletTransactionId,
    this.driverProfileId,
  });

  factory _$NotificationMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationMetadataModelImplFromJson(json);

  @override
  final int? tripId;
  @override
  final int? rideRequestId;
  @override
  final num? amount;
  @override
  final int? walletTransactionId;
  @override
  final int? driverProfileId;

  @override
  String toString() {
    return 'NotificationMetadataModel(tripId: $tripId, rideRequestId: $rideRequestId, amount: $amount, walletTransactionId: $walletTransactionId, driverProfileId: $driverProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMetadataModelImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.walletTransactionId, walletTransactionId) ||
                other.walletTransactionId == walletTransactionId) &&
            (identical(other.driverProfileId, driverProfileId) ||
                other.driverProfileId == driverProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    rideRequestId,
    amount,
    walletTransactionId,
    driverProfileId,
  );

  /// Create a copy of NotificationMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMetadataModelImplCopyWith<_$NotificationMetadataModelImpl>
  get copyWith =>
      __$$NotificationMetadataModelImplCopyWithImpl<
        _$NotificationMetadataModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationMetadataModelImplToJson(this);
  }
}

abstract class _NotificationMetadataModel implements NotificationMetadataModel {
  const factory _NotificationMetadataModel({
    final int? tripId,
    final int? rideRequestId,
    final num? amount,
    final int? walletTransactionId,
    final int? driverProfileId,
  }) = _$NotificationMetadataModelImpl;

  factory _NotificationMetadataModel.fromJson(Map<String, dynamic> json) =
      _$NotificationMetadataModelImpl.fromJson;

  @override
  int? get tripId;
  @override
  int? get rideRequestId;
  @override
  num? get amount;
  @override
  int? get walletTransactionId;
  @override
  int? get driverProfileId;

  /// Create a copy of NotificationMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationMetadataModelImplCopyWith<_$NotificationMetadataModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
