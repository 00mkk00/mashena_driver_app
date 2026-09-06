import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_tag_model.freezed.dart';
part 'rating_tag_model.g.dart';

@freezed
class RatingTagModel with _$RatingTagModel {
  const factory RatingTagModel({
    int? id,
    String? code,
    String? targetType,
    String? sentiment,
    bool? isActive,
    String? name,
  }) = _RatingTagModel;

  factory RatingTagModel.fromJson(Map<String, dynamic> json) =>
      _$RatingTagModelFromJson(json);
}
