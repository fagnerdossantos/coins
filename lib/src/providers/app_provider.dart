import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:provider/single_child_widget.dart' show SingleChildWidget;

import 'package:provider/provider.dart' show Provider, ReadContext;

import '../logic/bloc/coins_bloc.dart';
import '../logic/controllers/coins_list_viewmodel.dart';
import '../logic/api/controllers/api_controller.dart';
import '../logic/api/mocks/mock_api.dart';
import '../logic/repositories/coins_repo.dart';
import '../logic/intern_usage/load_json_in.dart';

List<SingleChildWidget> appProvider = [
  // Json
  Provider(create: (_) => LoadJsonIn()),

  // Models
  Provider(create: (_) => APIMockModel()), // ! MOCK
  // Provider(create: (_) => APIModel()),

  // Controllers
  Provider(
    create: (context) => APIController(
      context.read<APIMockModel>(), // !
      context.read<LoadJsonIn>(),
    ),
  ),

  // Repositories
  Provider(
    create: (context) => CoinsRepo(
      context.read<APIController>(),
      context.read<LoadJsonIn>(),
    ),
  ),

  // ViewModels
  Provider(
    create: (context) => CoinListViewModel(
      context.read<CoinsRepo>(),
    ),
  ),

  // Blocs
  BlocProvider(
    create: (context) => CoinsBloc(
      context.read<CoinListViewModel>(),
    ),
  ),
];
