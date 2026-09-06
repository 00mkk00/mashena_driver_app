import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_rating_tags_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_rating_tags_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/rating_tags_cubit/rating_tags_state.dart';

class RatingTagsCubit extends Cubit<RatingTagsState> {
  final GetRatingTagsUseCase _getRatingTagsUseCase;
  static const int _limit = 10;

  RatingTagsCubit(this._getRatingTagsUseCase) : super(const RatingTagsState());

  Future<void> fetchTags({bool loadMore = false}) async {
    if (state.isLoading || state.isLoadingMore) return;
    if (loadMore && !state.hasMore) return;

    if (loadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(
        state.copyWith(status: RatingTagsStatus.loading, errorMessage: null),
      );
    }

    final skip = loadMore ? state.skip : 0;
    final params = GetRatingTagsParams(skip: skip, limit: _limit);

    final result = await _getRatingTagsUseCase(params);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: loadMore ? state.status : RatingTagsStatus.failure,
            isLoadingMore: false,
            errorMessage: failure.rawMessage,
          ),
        );
      },
      (newTags) {
        final currentTags = loadMore
            ? List<RatingTagEntity>.from(state.tags)
            : <RatingTagEntity>[];
        currentTags.addAll(newTags);
        final hasMore = newTags.length >= _limit;

        emit(
          state.copyWith(
            status: RatingTagsStatus.success,
            tags: currentTags,
            isLoadingMore: false,
            hasMore: hasMore,
            skip: skip + newTags.length,
          ),
        );
      },
    );
  }
}
