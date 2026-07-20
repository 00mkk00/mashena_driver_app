import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_trip_entity.freezed.dart';

@freezed
class CompleteTripEntity with _$CompleteTripEntity {
  const factory CompleteTripEntity({required String message}) =
      _CompleteTripEntity;
}
