import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_trip_model.freezed.dart';
part 'complete_trip_model.g.dart';

@freezed
class CompleteTripModel with _$CompleteTripModel {
  const factory CompleteTripModel({required String message}) =
      _CompleteTripModel;

  factory CompleteTripModel.fromJson(Map<String, dynamic> json) =>
      _$CompleteTripModelFromJson(json);
}
