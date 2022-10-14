import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/api/models/api_model.dart';
import 'package:coins/src/logic/controllers/api_call_controller.dart';

List<SingleChildWidget> providers = [
  Provider(
    create: (_) => APIModel(),
  ),
  Provider(
    create: (_) => APICallController(),
  ),
  ChangeNotifierProvider(
    create: (context) => APIController(
      context.read<APIModel>(),
    ),
  )
];
