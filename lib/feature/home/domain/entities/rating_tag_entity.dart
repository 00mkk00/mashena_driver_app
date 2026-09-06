import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_tag_entity.freezed.dart';

@freezed
class RatingTagEntity with _$RatingTagEntity {
  const factory RatingTagEntity({
    required int id,
    required String code,
    required String targetType,
    required String sentiment,
    required bool isActive,
    required String name,
  }) = _RatingTagEntity;
}
