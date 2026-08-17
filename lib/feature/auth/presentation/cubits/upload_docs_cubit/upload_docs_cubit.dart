import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/upload_docs.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/upload_docs_cubit/upload_docs_state.dart';

class UploadDocsCubit extends Cubit<UploadDocsState> {
  final UploadDriverDocsUseCase useCase;

  UploadDocsCubit(this.useCase) : super(const UploadDocsState.initial());

  Future<void> upload(UploadDriverDocsParams params) async {
    emit(const UploadDocsState.loading());

    final result = await useCase(params);

    result.fold(
      (failure) {
        final savedLocale = getIt<LocalStorage>().getString('app_locale');
        final lang = (savedLocale != null && savedLocale.isNotEmpty)
            ? savedLocale
            : PlatformDispatcher.instance.locale.languageCode;
        final isAr = lang.startsWith('ar');

        emit(
          UploadDocsState.error(
            failure.rawMessage ??
                (isAr ? 'حدث خطأ ما' : 'Something went wrong'),
          ),
        );
      },

      (_) {
        emit(const UploadDocsState.success());
      },
    );
  }
}
