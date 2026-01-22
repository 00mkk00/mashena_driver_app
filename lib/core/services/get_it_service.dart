import 'package:get_it/get_it.dart';
import 'package:mashena_driver_app/core/services/api.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<Api>(Api());
}
