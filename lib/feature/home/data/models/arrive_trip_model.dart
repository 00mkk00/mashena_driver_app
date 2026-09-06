import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrive_trip_model.freezed.dart';
part 'arrive_trip_model.g.dart';

@freezed
class ArriveTripModel with _$ArriveTripModel {
  const factory ArriveTripModel({
    int? tripId,
    String? status,
    String? arrivedAt,
    int? freeWaitTimeSeconds,
    String? message,
  }) = _ArriveTripModel;

  factory ArriveTripModel.fromJson(Map<String, dynamic> json) =>
      _$ArriveTripModelFromJson(json);
}
