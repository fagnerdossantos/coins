import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/api/models/api_mock_model.dart';
import 'package:coins/src/api/models/api_model.dart';
import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/helpers/access_coins_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providersList = [
// Models
  Provider(create: (_) => APIModel()),
  Provider(create: (_) => APIMockModel()), // !

  // Controllers
  Provider(create: (context) => APIController(context.read<APIModel>())),

  // Helpers
  Provider(create: (_) => AccessCoinsHelper()),

  // Blocs
  BlocProvider(
    create: (context) => CoinsBloc(
      context.read<APIController>(),
    ),
  ),
];
