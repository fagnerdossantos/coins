import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/api/models/api_model.dart';
import 'package:coins/src/logic/controllers/api_call_controller.dart';

final List<SingleChildWidget> providers = [
  // Models
  Provider(
    create: (_) => APIModelImp(),
  ),

  // ! Local API for testing purpose
  Provider(
    create: (_) => FakeAPIModelImp(),
  ),

  // Controllers
  Provider(
    create: (_) => APICallController(),
  ),

  ChangeNotifierProvider(
    create: (context) => APIControllerImp(
      context.read<FakeAPIModelImp>(),
    ),
  )
];
