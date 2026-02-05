import 'package:get_it/get_it.dart';

import '../../core/network/dio_client.dart';
import '../../core/network/network_info.dart';
import '../../core/storage/local_storage.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  Prefs.init();

  // Core
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
  getIt.registerLazySingleton<Api>(() => Api());
}
