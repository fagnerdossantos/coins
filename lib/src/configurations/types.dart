import '../data/models/coin_helper_model.dart';

typedef APIResponse = Map<String, dynamic>;

typedef CoinDataRecord = ({
  List<CoinHelperModel> coins,
  List<String> labels,
  List<String> keys
});
