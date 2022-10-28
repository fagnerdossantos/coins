import 'package:api_module/src/interfaces/api_controller_interface.dart';
import 'package:api_module/src/interfaces/coins_store_interface.dart';
import 'package:api_module/src/interfaces/connection_interface.dart';
import 'package:api_module/src/utils/types.dart';

class ConnectionRepository implements ConnectionInterface {
  // Dependencies
  final APIControllerInterface _connection;
  final CoinsStoreInterface _data;
  ConnectionRepository(this._connection, this._data);

  @override
  Future<bool> hasData() async {
    final APIResponse map = await _connection.fetch();
    _data.add(map: map);
    return true;
  }
}
