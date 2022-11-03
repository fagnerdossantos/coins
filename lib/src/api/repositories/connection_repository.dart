import 'package:coins/src/api/interfaces/api_controller_interface.dart';
import 'package:coins/src/api/interfaces/coins_store_interface.dart';
import 'package:coins/src/api/interfaces/connection_interface.dart';
import 'package:coins/utils/consts.dart';

class ConnectionRepository implements ConnectionInterface {
  // Dependencies
  final APIControllerInterface _connection;
  final CoinsStoreInterface _data;
  ConnectionRepository(this._connection, this._data);

  @override
  Future<APIResponse> hasData() async {
    // Calling API
    final APIResponse map = await _connection.fetch();

    if (map.containsKey("error")) {
      return map;
    }

    await Future.delayed(const Duration(seconds: 1));
    _data.add(map: map);

    return map;
  }
}
