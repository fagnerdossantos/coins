import 'package:coins/src/logic/repositories/coins_cache.dart';
import 'package:get_it/get_it.dart';

import '../logic/api/models/api_model.dart';
import '../logic/bloc/coins_bloc.dart';
import '../logic/controllers/coins_list_viewmodel.dart';
import '../logic/api/controllers/api_controller.dart';
import '../logic/api/mocks/mock_api.dart';
import '../logic/repositories/coins_repo.dart';

final GetIt getIt = GetIt.instance;

class AppInstancies {
  /// Used to register the instancies
  void register() {
    // Models
    getIt.registerSingleton<APIMockModel>(APIMockModel());
    getIt.registerSingleton<APIModel>(APIModel());

    // Controllers
    getIt.registerLazySingleton<APIController>(
      () => APIController(getIt<APIModel>()),
    );

    // Repositories
    getIt.registerLazySingleton(
      () => CoinsRepo(getIt<APIController>()),
    );

    getIt.registerLazySingleton(() => CoinsCache());

    // ViewModels
    getIt.registerLazySingleton<CoinListViewModel>(
      () => CoinListViewModel(getIt<CoinsRepo>(), getIt<CoinsCache>()),
    );

    // Blocs
    getIt.registerSingleton<CoinsBloc>(
      CoinsBloc(getIt<CoinListViewModel>()),
    );
  }
}
