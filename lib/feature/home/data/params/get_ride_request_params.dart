import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ride_request_params.freezed.dart';

@freezed
class GetRideRequestParams with _$GetRideRequestParams {
  const factory GetRideRequestParams({required int id}) = _GetRideRequestParams;
}
