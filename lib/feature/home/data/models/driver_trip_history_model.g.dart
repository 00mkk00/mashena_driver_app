// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_trip_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverTripHistoryModelImpl _$$DriverTripHistoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverTripHistoryModelImpl(
  id: (json['id'] as num?)?.toInt(),
  rideRequestId: (json['rideRequestId'] as num?)?.toInt(),
  status: json['status'] as String?,
  pickupAddress: json['pickupAddress'] as String?,
  pickupLat: (json['pickupLat'] as num?)?.toDouble(),
  pickupLng: (json['pickupLng'] as num?)?.toDouble(),
  destAddress: json['destAddress'] as String?,
  destLat: (json['destLat'] as num?)?.toDouble(),
  destLng: (json['destLng'] as num?)?.toDouble(),
  fareTotal: json['fareTotal'] as num?,
  finalFare: json['finalFare'] as num?,
  discountAmount: json['discountAmount'] as num?,
  distanceKm: (json['distanceKm'] as num?)?.toDouble(),
  durationSec: (json['durationSec'] as num?)?.toInt(),
  createdAt: json['createdAt'] as String?,
  acceptedAt: json['acceptedAt'] as String?,
  startedAt: json['startedAt'] as String?,
  completedAt: json['completedAt'] as String?,
  canceledAt: json['canceledAt'] as String?,
  cancelledBy: json['cancelledBy'] as String?,
  rider: json['rider'] == null
      ? null
      : TripUserModel.fromJson(json['rider'] as Map<String, dynamic>),
  driver: json['driver'] == null
      ? null
      : TripUserModel.fromJson(json['driver'] as Map<String, dynamic>),
  vehicle: json['vehicle'] == null
      ? null
      : TripVehicleModel.fromJson(json['vehicle'] as Map<String, dynamic>),
  myRating: json['myRating'] == null
      ? null
      : TripRatingModel.fromJson(json['myRating'] as Map<String, dynamic>),
  receivedRating: json['receivedRating'] == null
      ? null
      : TripRatingModel.fromJson(
          json['receivedRating'] as Map<String, dynamic>,
        ),
  ratings: (json['ratings'] as List<dynamic>?)
      ?.map((e) => TripRatingModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DriverTripHistoryModelImplToJson(
  _$DriverTripHistoryModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'rideRequestId': instance.rideRequestId,
  'status': instance.status,
  'pickupAddress': instance.pickupAddress,
  'pickupLat': instance.pickupLat,
  'pickupLng': instance.pickupLng,
  'destAddress': instance.destAddress,
  'destLat': instance.destLat,
  'destLng': instance.destLng,
  'fareTotal': instance.fareTotal,
  'finalFare': instance.finalFare,
  'discountAmount': instance.discountAmount,
  'distanceKm': instance.distanceKm,
  'durationSec': instance.durationSec,
  'createdAt': instance.createdAt,
  'acceptedAt': instance.acceptedAt,
  'startedAt': instance.startedAt,
  'completedAt': instance.completedAt,
  'canceledAt': instance.canceledAt,
  'cancelledBy': instance.cancelledBy,
  'rider': instance.rider,
  'driver': instance.driver,
  'vehicle': instance.vehicle,
  'myRating': instance.myRating,
  'receivedRating': instance.receivedRating,
  'ratings': instance.ratings,
};

_$TripUserModelImpl _$$TripUserModelImplFromJson(Map<String, dynamic> json) =>
    _$TripUserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      ratingAvg: (json['ratingAvg'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TripUserModelImplToJson(_$TripUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'ratingAvg': instance.ratingAvg,
    };

_$TripVehicleModelImpl _$$TripVehicleModelImplFromJson(
  Map<String, dynamic> json,
) => _$TripVehicleModelImpl(
  plateNumber: json['plateNumber'] as String?,
  model: json['model'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$$TripVehicleModelImplToJson(
  _$TripVehicleModelImpl instance,
) => <String, dynamic>{
  'plateNumber': instance.plateNumber,
  'model': instance.model,
  'color': instance.color,
};

_$TripRatingModelImpl _$$TripRatingModelImplFromJson(
  Map<String, dynamic> json,
) => _$TripRatingModelImpl(
  id: (json['id'] as num?)?.toInt(),
  score: (json['score'] as num?)?.toInt(),
  comment: json['comment'] as String?,
  fromUserId: (json['fromUserId'] as num?)?.toInt(),
  toUserId: (json['toUserId'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => TripRatingTagModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$$TripRatingModelImplToJson(
  _$TripRatingModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'score': instance.score,
  'comment': instance.comment,
  'fromUserId': instance.fromUserId,
  'toUserId': instance.toUserId,
  'tags': instance.tags,
  'createdAt': instance.createdAt,
};

_$TripRatingTagModelImpl _$$TripRatingTagModelImplFromJson(
  Map<String, dynamic> json,
) => _$TripRatingTagModelImpl(code: json['code'] as String?);

Map<String, dynamic> _$$TripRatingTagModelImplToJson(
  _$TripRatingTagModelImpl instance,
) => <String, dynamic>{'code': instance.code};
