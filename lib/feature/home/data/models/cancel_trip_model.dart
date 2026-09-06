import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_trip_model.freezed.dart';
part 'cancel_trip_model.g.dart';

@freezed
class CancelTripModel with _$CancelTripModel {
  const factory CancelTripModel({String? message}) = _CancelTripModel;

  factory CancelTripModel.fromJson(Map<String, dynamic> json) =>
      _$CancelTripModelFromJson(json);
}
