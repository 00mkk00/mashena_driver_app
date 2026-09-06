import 'package:mashena_driver_app/feature/home/data/models/rating_tag_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';

extension RatingTagModelMapper on RatingTagModel {
  RatingTagEntity toEntity() {
    return RatingTagEntity(
      id: id ?? 0,
      code: code ?? '',
      targetType: targetType ?? 'DRIVER',
      sentiment: sentiment ?? 'POSITIVE',
      isActive: isActive ?? true,
      name: name ?? '',
    );
  }
}
