import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_params.freezed.dart';
part 'send_otp_params.g.dart';

@freezed
class SendOtpParams with _$SendOtpParams {
  const factory SendOtpParams({
    required String email,
    required String phone,
  }) = _SendOtpParams;

  factory SendOtpParams.fromJson(Map<String, dynamic> json) =>
      _$SendOtpParamsFromJson(json);
}