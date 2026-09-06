import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/get_active_restrictions_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/get_moderation_overview_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/moderation_overview_cubit/moderation_overview_state.dart';

class ModerationOverviewCubit extends Cubit<ModerationOverviewState> {
  final GetModerationOverviewUseCase _getModerationOverviewUseCase;
  final GetActiveRestrictionsUseCase _getActiveRestrictionsUseCase;

  ModerationOverviewCubit({
    required GetModerationOverviewUseCase getModerationOverviewUseCase,
    required GetActiveRestrictionsUseCase getActiveRestrictionsUseCase,
  }) : _getModerationOverviewUseCase = getModerationOverviewUseCase,
       _getActiveRestrictionsUseCase = getActiveRestrictionsUseCase,
       super(const ModerationOverviewState());

  Future<void> loadOverview({bool isRefresh = false}) async {
    if (!isRefresh) {
      emit(
        state.copyWith(
          status: ModerationOverviewStatus.loading,
          errorMessage: null,
        ),
      );
    }

    final overviewResult = await _getModerationOverviewUseCase();
    final restrictionsResult = await _getActiveRestrictionsUseCase();

    overviewResult.fold(
      (failure) {
        log('Moderation Overview Failure: ${failure.rawMessage ?? failure.toString()}');
        emit(
          state.copyWith(
            status: ModerationOverviewStatus.failure,
            errorMessage: failure.rawMessage,
          ),
        );
      },
      (overview) {
        final activeRestrictions = restrictionsResult.fold(
          (_) => overview.activeRestrictions,
          (restrictions) => restrictions,
        );

        emit(
          state.copyWith(
            status: ModerationOverviewStatus.success,
            overview: overview,
            activeRestrictions: activeRestrictions,
            errorMessage: null,
          ),
        );
      },
    );
  }
}
