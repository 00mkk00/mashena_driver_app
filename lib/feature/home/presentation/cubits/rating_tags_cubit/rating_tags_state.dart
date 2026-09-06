import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';

enum RatingTagsStatus { initial, loading, success, failure }

class RatingTagsState {
  final RatingTagsStatus status;
  final List<RatingTagEntity> tags;
  final bool isLoadingMore;
  final bool hasMore;
  final int skip;
  final String? errorMessage;

  const RatingTagsState({
    this.status = RatingTagsStatus.initial,
    this.tags = const [],
    this.isLoadingMore = false,
    this.hasMore = true,
    this.skip = 0,
    this.errorMessage,
  });

  bool get isLoading => status == RatingTagsStatus.loading;

  RatingTagsState copyWith({
    RatingTagsStatus? status,
    List<RatingTagEntity>? tags,
    bool? isLoadingMore,
    bool? hasMore,
    int? skip,
    String? errorMessage,
  }) {
    return RatingTagsState(
      status: status ?? this.status,
      tags: tags ?? this.tags,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
      skip: skip ?? this.skip,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
