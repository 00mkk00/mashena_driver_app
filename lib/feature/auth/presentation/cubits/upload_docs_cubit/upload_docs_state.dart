import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_docs_state.freezed.dart';

@freezed
class UploadDocsState with _$UploadDocsState {
  const factory UploadDocsState.initial() = _Initial;
  const factory UploadDocsState.loading() = _Loading;
  const factory UploadDocsState.success() = _Success;
  const factory UploadDocsState.error(String message) = _Error;
}
