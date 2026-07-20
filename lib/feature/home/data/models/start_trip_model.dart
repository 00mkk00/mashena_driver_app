import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_trip_model.freezed.dart';
part 'start_trip_model.g.dart';

@freezed
class StartTripModel with _$StartTripModel {
  const factory StartTripModel({String? status}) = _StartTripModel;

  factory StartTripModel.fromJson(Map<String, dynamic> json) =>
      _$StartTripModelFromJson(json);
}
