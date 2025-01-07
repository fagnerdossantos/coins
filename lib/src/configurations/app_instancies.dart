import 'package:get_it/get_it.dart';

import '../contracts/coins_client_interface.dart';
import '../data/datasources/coins_cache.dart';
import '../data/datasources/coins_client_http.dart';
import '../data/datasources/load_file.dart';
import '../data/datasources/mock_client.dart';
import '../data/helpers/coins_data_intern.dart';
import '../data/repositories/coins_repository.dart';
import '../ui/viewmodel/coins_viewmodel.dart';

final GetIt getIt = GetIt.instance;

class AppInstancies {
  /// Used to register the instancies
  void register() {
    // ! Intern usage
    getIt.registerSingleton(
      CoinsDataIntern(
          loader: LoadFile(), path: "assets/json/coins_helper.json"),
    );

    // Services
    getIt.registerLazySingleton<CoinsClientInterface>(
      () => MockClient(),
      instanceName: "mock",
    );

    getIt.registerLazySingleton<CoinsClientInterface>(() => CoinsClientHttp());

    // Repositories
    getIt.registerSingleton(CoinsCache());

    getIt.registerSingleton(
      CoinsRepository(
        // coinsClient: getIt<CoinsClientInterface>(instanceName: "mock"),
        coinsClient: getIt<CoinsClientInterface>(),
        helper: getIt<CoinsDataIntern>(),
        cache: getIt<CoinsCache>(),
      ),
    );

    getIt.registerSingleton(
      CoinsViewmodel(
        cache: getIt<CoinsCache>(),
        repository: getIt<CoinsRepository>(),
      ),
    );
  }
}
