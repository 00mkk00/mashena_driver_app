import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';

part 'driver_documents_state.freezed.dart';

enum DriverDocumentsStatus { initial, loading, success, failure }

@freezed
class DriverDocumentsState with _$DriverDocumentsState {
  const factory DriverDocumentsState({
    @Default(DriverDocumentsStatus.initial) DriverDocumentsStatus status,
    @Default([]) List<DriverDocumentEntity> documents,
    String? errorMessage,
  }) = _DriverDocumentsState;
}
