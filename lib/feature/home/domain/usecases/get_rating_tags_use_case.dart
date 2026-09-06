import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_rating_tags_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetRatingTagsUseCase {
  final HomeRepository repository;

  GetRatingTagsUseCase(this.repository);

  Future<Either<Failure, List<RatingTagEntity>>> call(
    GetRatingTagsParams params,
  ) {
    return repository.getRatingTags(params);
  }
}
