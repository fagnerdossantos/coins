import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/api/models/api_mock_model.dart';
import 'package:coins/src/api/models/api_model.dart';
import 'package:coins/src/api/repositories/connection_repository.dart';
import 'package:coins/src/database/coins_store.dart';

List<SingleChildWidget> providers = [
  /* Models */
  Provider(
    create: (context) => APIModel(),
  ),

  // ! Mock
  Provider(
    create: (_) => APIMockModel(),
  ),

  /* Controllers */
  Provider(
    create: (context) => APIController(context.read<APIModel>()),
  ),

  ChangeNotifierProvider(
    create: (context) => CoinsStore(),
  ),

  /* Repositories */
  Provider(
    create: (context) => ConnectionRepository(
        context.read<APIController>(), context.read<CoinsStore>()),
  ),
];
