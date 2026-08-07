import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_driver_params.freezed.dart';
part 'create_driver_params.g.dart';

@freezed
class CreateDriverParams with _$CreateDriverParams {
  const factory CreateDriverParams({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String password,
    required String city,
    String? file,
  }) = _CreateDriverParams;

  factory CreateDriverParams.fromJson(Map<String, dynamic> json) =>
      _$CreateDriverParamsFromJson(json);
}
