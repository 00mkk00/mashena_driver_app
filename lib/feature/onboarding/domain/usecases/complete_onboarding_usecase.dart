import 'package:mashena_driver_app/core/constants/app_constants.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';

class CompleteOnboarding {
  CompleteOnboarding(this._storage);

  final LocalStorage _storage;

  Future<void> call() async {
    await _storage.setBool(AppConstants.isOnboardingSeenKey, true);
  }
}
