import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/appeal_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/moderation_overview_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/penalty_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/restriction_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/violation_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeal_details_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeals_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_penalties_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_violations_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/submit_appeal_params.dart';

abstract class ModerationRemoteDataSource {
  Future<ModerationOverviewModel> getModerationOverview();

  Future<List<ViolationModel>> getViolations(GetViolationsParams params);

  Future<List<PenaltyModel>> getPenalties(GetPenaltiesParams params);

  Future<List<RestrictionModel>> getActiveRestrictions();

  Future<List<AppealModel>> getAppeals(GetAppealsParams params);

  Future<AppealModel> submitAppeal(SubmitAppealParams params);

  Future<AppealModel> getAppealDetails(GetAppealDetailsParams params);
}

class ModerationRemoteDataSourceImpl implements ModerationRemoteDataSource {
  final ApiClient _apiClient;

  ModerationRemoteDataSourceImpl(this._apiClient);

  @override
  Future<ModerationOverviewModel> getModerationOverview() async {
    final response = await _apiClient.get(Endpoints.moderationOverview);
    final data =
        (response is Map<String, dynamic> &&
            response['data'] is Map<String, dynamic>)
        ? response['data'] as Map<String, dynamic>
        : (response is Map<String, dynamic> ? response : <String, dynamic>{});
    return ModerationOverviewModel.fromJson(data);
  }

  @override
  Future<List<ViolationModel>> getViolations(GetViolationsParams params) async {
    final response = await _apiClient.get(
      Endpoints.moderationViolations,
      query: params.toJson(),
    );

    final list = (response is List)
        ? response
        : (response is Map<String, dynamic> && response['data'] is List
              ? response['data'] as List
              : <dynamic>[]);

    return list
        .map((item) => ViolationModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<PenaltyModel>> getPenalties(GetPenaltiesParams params) async {
    final response = await _apiClient.get(
      Endpoints.moderationPenalties,
      query: params.toJson(),
    );

    final list = (response is List)
        ? response
        : (response is Map<String, dynamic> && response['data'] is List
              ? response['data'] as List
              : <dynamic>[]);

    return list
        .map((item) => PenaltyModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<RestrictionModel>> getActiveRestrictions() async {
    final response = await _apiClient.get(Endpoints.moderationRestrictions);

    final list = (response is List)
        ? response
        : (response is Map<String, dynamic> && response['data'] is List
              ? response['data'] as List
              : <dynamic>[]);

    return list
        .map((item) => RestrictionModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<AppealModel>> getAppeals(GetAppealsParams params) async {
    final response = await _apiClient.get(
      Endpoints.moderationAppeals,
      query: params.toJson(),
    );

    final list = (response is List)
        ? response
        : (response is Map<String, dynamic> && response['data'] is List
              ? response['data'] as List
              : <dynamic>[]);

    return list
        .map((item) => AppealModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<AppealModel> submitAppeal(SubmitAppealParams params) async {
    final path = Endpoints.moderationSubmitAppeal.replaceAll(
      '{id}',
      params.penaltyId.toString(),
    );

    final response = await _apiClient.post(path, body: params.toJson());
    final data =
        (response is Map<String, dynamic> &&
            response['data'] is Map<String, dynamic>)
        ? response['data'] as Map<String, dynamic>
        : (response is Map<String, dynamic> ? response : <String, dynamic>{});

    return AppealModel.fromJson(data);
  }

  @override
  Future<AppealModel> getAppealDetails(GetAppealDetailsParams params) async {
    final path = Endpoints.moderationAppealDetails.replaceAll(
      '{id}',
      params.id.toString(),
    );

    final response = await _apiClient.get(path);
    final data =
        (response is Map<String, dynamic> &&
            response['data'] is Map<String, dynamic>)
        ? response['data'] as Map<String, dynamic>
        : (response is Map<String, dynamic> ? response : <String, dynamic>{});

    return AppealModel.fromJson(data);
  }
}
