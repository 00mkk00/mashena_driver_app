// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationResponseEntity {
  int get count => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  List<NotificationItemEntity> get data => throw _privateConstructorUsedError;

  /// Create a copy of NotificationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationResponseEntityCopyWith<NotificationResponseEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseEntityCopyWith<$Res> {
  factory $NotificationResponseEntityCopyWith(
    NotificationResponseEntity value,
    $Res Function(NotificationResponseEntity) then,
  ) =
      _$NotificationResponseEntityCopyWithImpl<
        $Res,
        NotificationResponseEntity
      >;
  @useResult
  $Res call({int count, int unreadCount, List<NotificationItemEntity> data});
}

/// @nodoc
class _$NotificationResponseEntityCopyWithImpl<
  $Res,
  $Val extends NotificationResponseEntity
>
    implements $NotificationResponseEntityCopyWith<$Res> {
  _$NotificationResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? unreadCount = null,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<NotificationItemEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationResponseEntityImplCopyWith<$Res>
    implements $NotificationResponseEntityCopyWith<$Res> {
  factory _$$NotificationResponseEntityImplCopyWith(
    _$NotificationResponseEntityImpl value,
    $Res Function(_$NotificationResponseEntityImpl) then,
  ) = __$$NotificationResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int unreadCount, List<NotificationItemEntity> data});
}

/// @nodoc
class __$$NotificationResponseEntityImplCopyWithImpl<$Res>
    extends
        _$NotificationResponseEntityCopyWithImpl<
          $Res,
          _$NotificationResponseEntityImpl
        >
    implements _$$NotificationResponseEntityImplCopyWith<$Res> {
  __$$NotificationResponseEntityImplCopyWithImpl(
    _$NotificationResponseEntityImpl _value,
    $Res Function(_$NotificationResponseEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? unreadCount = null,
    Object? data = null,
  }) {
    return _then(
      _$NotificationResponseEntityImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<NotificationItemEntity>,
      ),
    );
  }
}

/// @nodoc

class _$NotificationResponseEntityImpl implements _NotificationResponseEntity {
  const _$NotificationResponseEntityImpl({
    required this.count,
    required this.unreadCount,
    required final List<NotificationItemEntity> data,
  }) : _data = data;

  @override
  final int count;
  @override
  final int unreadCount;
  final List<NotificationItemEntity> _data;
  @override
  List<NotificationItemEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NotificationResponseEntity(count: $count, unreadCount: $unreadCount, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseEntityImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    unreadCount,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of NotificationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationResponseEntityImplCopyWith<_$NotificationResponseEntityImpl>
  get copyWith =>
      __$$NotificationResponseEntityImplCopyWithImpl<
        _$NotificationResponseEntityImpl
      >(this, _$identity);
}

abstract class _NotificationResponseEntity
    implements NotificationResponseEntity {
  const factory _NotificationResponseEntity({
    required final int count,
    required final int unreadCount,
    required final List<NotificationItemEntity> data,
  }) = _$NotificationResponseEntityImpl;

  @override
  int get count;
  @override
  int get unreadCount;
  @override
  List<NotificationItemEntity> get data;

  /// Create a copy of NotificationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationResponseEntityImplCopyWith<_$NotificationResponseEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationItemEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;
  NotificationMetadataEntity get metadata => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of NotificationItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationItemEntityCopyWith<NotificationItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationItemEntityCopyWith<$Res> {
  factory $NotificationItemEntityCopyWith(
    NotificationItemEntity value,
    $Res Function(NotificationItemEntity) then,
  ) = _$NotificationItemEntityCopyWithImpl<$Res, NotificationItemEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    String title,
    String body,
    NotificationType type,
    NotificationMetadataEntity metadata,
    bool isRead,
    String createdAt,
    String updatedAt,
  });

  $NotificationMetadataEntityCopyWith<$Res> get metadata;
}

/// @nodoc
class _$NotificationItemEntityCopyWithImpl<
  $Res,
  $Val extends NotificationItemEntity
>
    implements $NotificationItemEntityCopyWith<$Res> {
  _$NotificationItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? metadata = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as NotificationType,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as NotificationMetadataEntity,
            isRead: null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of NotificationItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationMetadataEntityCopyWith<$Res> get metadata {
    return $NotificationMetadataEntityCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationItemEntityImplCopyWith<$Res>
    implements $NotificationItemEntityCopyWith<$Res> {
  factory _$$NotificationItemEntityImplCopyWith(
    _$NotificationItemEntityImpl value,
    $Res Function(_$NotificationItemEntityImpl) then,
  ) = __$$NotificationItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    String title,
    String body,
    NotificationType type,
    NotificationMetadataEntity metadata,
    bool isRead,
    String createdAt,
    String updatedAt,
  });

  @override
  $NotificationMetadataEntityCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$NotificationItemEntityImplCopyWithImpl<$Res>
    extends
        _$NotificationItemEntityCopyWithImpl<$Res, _$NotificationItemEntityImpl>
    implements _$$NotificationItemEntityImplCopyWith<$Res> {
  __$$NotificationItemEntityImplCopyWithImpl(
    _$NotificationItemEntityImpl _value,
    $Res Function(_$NotificationItemEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? metadata = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$NotificationItemEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as NotificationType,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as NotificationMetadataEntity,
        isRead: null == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NotificationItemEntityImpl implements _NotificationItemEntity {
  const _$NotificationItemEntityImpl({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
    required this.type,
    required this.metadata,
    required this.isRead,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;
  @override
  final NotificationType type;
  @override
  final NotificationMetadataEntity metadata;
  @override
  final bool isRead;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'NotificationItemEntity(id: $id, userId: $userId, title: $title, body: $body, type: $type, metadata: $metadata, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationItemEntityImpl &&
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

  /// Create a copy of NotificationItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationItemEntityImplCopyWith<_$NotificationItemEntityImpl>
  get copyWith =>
      __$$NotificationItemEntityImplCopyWithImpl<_$NotificationItemEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _NotificationItemEntity implements NotificationItemEntity {
  const factory _NotificationItemEntity({
    required final int id,
    required final int userId,
    required final String title,
    required final String body,
    required final NotificationType type,
    required final NotificationMetadataEntity metadata,
    required final bool isRead,
    required final String createdAt,
    required final String updatedAt,
  }) = _$NotificationItemEntityImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  NotificationType get type;
  @override
  NotificationMetadataEntity get metadata;
  @override
  bool get isRead;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of NotificationItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationItemEntityImplCopyWith<_$NotificationItemEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationMetadataEntity {
  int get tripId => throw _privateConstructorUsedError;
  int get rideRequestId => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  int get walletTransactionId => throw _privateConstructorUsedError;
  int get driverProfileId => throw _privateConstructorUsedError;

  /// Create a copy of NotificationMetadataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationMetadataEntityCopyWith<NotificationMetadataEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMetadataEntityCopyWith<$Res> {
  factory $NotificationMetadataEntityCopyWith(
    NotificationMetadataEntity value,
    $Res Function(NotificationMetadataEntity) then,
  ) =
      _$NotificationMetadataEntityCopyWithImpl<
        $Res,
        NotificationMetadataEntity
      >;
  @useResult
  $Res call({
    int tripId,
    int rideRequestId,
    num amount,
    int walletTransactionId,
    int driverProfileId,
  });
}

/// @nodoc
class _$NotificationMetadataEntityCopyWithImpl<
  $Res,
  $Val extends NotificationMetadataEntity
>
    implements $NotificationMetadataEntityCopyWith<$Res> {
  _$NotificationMetadataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationMetadataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? rideRequestId = null,
    Object? amount = null,
    Object? walletTransactionId = null,
    Object? driverProfileId = null,
  }) {
    return _then(
      _value.copyWith(
            tripId: null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int,
            rideRequestId: null == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as num,
            walletTransactionId: null == walletTransactionId
                ? _value.walletTransactionId
                : walletTransactionId // ignore: cast_nullable_to_non_nullable
                      as int,
            driverProfileId: null == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationMetadataEntityImplCopyWith<$Res>
    implements $NotificationMetadataEntityCopyWith<$Res> {
  factory _$$NotificationMetadataEntityImplCopyWith(
    _$NotificationMetadataEntityImpl value,
    $Res Function(_$NotificationMetadataEntityImpl) then,
  ) = __$$NotificationMetadataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int tripId,
    int rideRequestId,
    num amount,
    int walletTransactionId,
    int driverProfileId,
  });
}

/// @nodoc
class __$$NotificationMetadataEntityImplCopyWithImpl<$Res>
    extends
        _$NotificationMetadataEntityCopyWithImpl<
          $Res,
          _$NotificationMetadataEntityImpl
        >
    implements _$$NotificationMetadataEntityImplCopyWith<$Res> {
  __$$NotificationMetadataEntityImplCopyWithImpl(
    _$NotificationMetadataEntityImpl _value,
    $Res Function(_$NotificationMetadataEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationMetadataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? rideRequestId = null,
    Object? amount = null,
    Object? walletTransactionId = null,
    Object? driverProfileId = null,
  }) {
    return _then(
      _$NotificationMetadataEntityImpl(
        tripId: null == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int,
        rideRequestId: null == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as num,
        walletTransactionId: null == walletTransactionId
            ? _value.walletTransactionId
            : walletTransactionId // ignore: cast_nullable_to_non_nullable
                  as int,
        driverProfileId: null == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$NotificationMetadataEntityImpl implements _NotificationMetadataEntity {
  const _$NotificationMetadataEntityImpl({
    required this.tripId,
    required this.rideRequestId,
    required this.amount,
    required this.walletTransactionId,
    required this.driverProfileId,
  });

  @override
  final int tripId;
  @override
  final int rideRequestId;
  @override
  final num amount;
  @override
  final int walletTransactionId;
  @override
  final int driverProfileId;

  @override
  String toString() {
    return 'NotificationMetadataEntity(tripId: $tripId, rideRequestId: $rideRequestId, amount: $amount, walletTransactionId: $walletTransactionId, driverProfileId: $driverProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMetadataEntityImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.walletTransactionId, walletTransactionId) ||
                other.walletTransactionId == walletTransactionId) &&
            (identical(other.driverProfileId, driverProfileId) ||
                other.driverProfileId == driverProfileId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    rideRequestId,
    amount,
    walletTransactionId,
    driverProfileId,
  );

  /// Create a copy of NotificationMetadataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMetadataEntityImplCopyWith<_$NotificationMetadataEntityImpl>
  get copyWith =>
      __$$NotificationMetadataEntityImplCopyWithImpl<
        _$NotificationMetadataEntityImpl
      >(this, _$identity);
}

abstract class _NotificationMetadataEntity
    implements NotificationMetadataEntity {
  const factory _NotificationMetadataEntity({
    required final int tripId,
    required final int rideRequestId,
    required final num amount,
    required final int walletTransactionId,
    required final int driverProfileId,
  }) = _$NotificationMetadataEntityImpl;

  @override
  int get tripId;
  @override
  int get rideRequestId;
  @override
  num get amount;
  @override
  int get walletTransactionId;
  @override
  int get driverProfileId;

  /// Create a copy of NotificationMetadataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationMetadataEntityImplCopyWith<_$NotificationMetadataEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
