import 'package:mashena_driver_app/core/constants/app_constants.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';

class GetOnboardingStatus {
  GetOnboardingStatus(this._storage);

  final LocalStorage _storage;

  bool call() => _storage.getBool(AppConstants.isOnboardingSeenKey) ?? false;
}
