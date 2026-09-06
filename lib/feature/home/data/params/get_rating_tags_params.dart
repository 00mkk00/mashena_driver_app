import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_rating_tags_params.freezed.dart';
part 'get_rating_tags_params.g.dart';

@freezed
class GetRatingTagsParams with _$GetRatingTagsParams {
  const factory GetRatingTagsParams({
    int? skip,
    int? limit,
    @Default('RIDER') String targetType,
    @Default(true) bool isActive,
  }) = _GetRatingTagsParams;

  factory GetRatingTagsParams.fromJson(Map<String, dynamic> json) =>
      _$GetRatingTagsParamsFromJson(json);
}
