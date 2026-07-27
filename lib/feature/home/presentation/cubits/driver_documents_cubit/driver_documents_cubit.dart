import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_driver_documents_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_documents_cubit/driver_documents_state.dart';

class DriverDocumentsCubit extends Cubit<DriverDocumentsState> {
  final GetDriverDocumentsUseCase _getDriverDocumentsUseCase;

  DriverDocumentsCubit(this._getDriverDocumentsUseCase)
      : super(const DriverDocumentsState());

  Future<void> fetchDocuments({bool isRefresh = false}) async {
    if (!isRefresh) {
      emit(state.copyWith(status: DriverDocumentsStatus.loading, errorMessage: null));
    }

    final result = await _getDriverDocumentsUseCase();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: DriverDocumentsStatus.failure,
            errorMessage: failure.rawMessage ?? 'Failed to load driver documents',
          ),
        );
      },
      (documents) {
        emit(
          state.copyWith(
            status: DriverDocumentsStatus.success,
            documents: documents,
            errorMessage: null,
          ),
        );
      },
    );
  }
}
