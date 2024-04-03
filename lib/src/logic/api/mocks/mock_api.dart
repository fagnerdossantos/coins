import 'dart:convert' show jsonDecode, jsonEncode;

import '../../../utils/types.dart';
import '../interfaces/i_api_model.dart';

class APIMockModel implements IApiModel {
  @override
  Future<APIResponse> fetch({required String coinsTarget}) async {
    return await Future.delayed(
      // Time
      Duration.zero,

      // Data
      () => jsonDecode(
        jsonEncode(_data),
      ),
    );
  }
}

const APIResponse _data = {
  "BTCBRL": {
    "code": "BTC",
    "codein": "BRL",
    "name": "Bitcoin/Real Brasileiro",
    "high": "344702",
    "low": "315338",
    "varBid": "-13311",
    "pctChange": "-3.91",
    "bid": "327415",
    "ask": "327495",
    "timestamp": "1710870239",
    "create_date": "2024-03-19 14:43:59"
  },
  "ETHBRL": {
    "code": "ETH",
    "codein": "BRL",
    "name": "Ethereum/Real Brasileiro",
    "high": "18022.51",
    "low": "16183.21",
    "varBid": "-980.2",
    "pctChange": "-5.53",
    "bid": "16698.69",
    "ask": "16774.24",
    "timestamp": "1710870232",
    "create_date": "2024-03-19 14:43:52"
  },
  "XRPBRL": {
    "code": "XRP",
    "codein": "BRL",
    "name": "XRP/Real Brasileiro",
    "high": "3.37",
    "low": "2.89",
    "varBid": "0",
    "pctChange": "-0.09",
    "bid": "3.06",
    "ask": "3.06",
    "timestamp": "1710870239",
    "create_date": "2024-03-19 14:43:59"
  },
  "ZARBRL": {
    "code": "ZAR",
    "codein": "BRL",
    "name": "Rand Sul-Africano/Real Brasileiro",
    "high": "0.2668",
    "low": "0.2644",
    "varBid": "0.0002",
    "pctChange": "0.06",
    "bid": "0.2649",
    "ask": "0.265",
    "timestamp": "1710870195",
    "create_date": "2024-03-19 14:43:15"
  },
  "USDBRL": {
    "code": "USD",
    "codein": "BRL",
    "name": "Dólar Americano/Real Brasileiro",
    "high": "5.0549",
    "low": "5.0109",
    "varBid": "-0.0144",
    "pctChange": "-0.29",
    "bid": "0.9000",
    "ask": "5.0115",
    "timestamp": "1710870235",
    "create_date": "2024-03-19 14:43:55"
  },
  "CADBRL": {
    "code": "CAD",
    "codein": "BRL",
    "name": "Dólar Canadense/Real Brasileiro",
    "high": "3.7246",
    "low": "3.6947",
    "varBid": "-0.0181",
    "pctChange": "-0.49",
    "bid": "3.692",
    "ask": "3.6974",
    "timestamp": "1710870087",
    "create_date": "2024-03-19 14:41:27"
  },
  "MXNBRL": {
    "code": "MXN",
    "codein": "BRL",
    "name": "Peso Mexicano/Real Brasileiro",
    "high": "0.2991",
    "low": "0.2969",
    "varBid": "-0.0008",
    "pctChange": "-0.27",
    "bid": "0.2975",
    "ask": "0.2975",
    "timestamp": "1710870187",
    "create_date": "2024-03-19 14:43:07"
  },
  "ARSBRL": {
    "code": "ARS",
    "codein": "BRL",
    "name": "Peso Argentino/Real Brasileiro",
    "high": "0.0059",
    "low": "0.0059",
    "varBid": "0",
    "pctChange": "0",
    "bid": "0.0059",
    "ask": "0.0059",
    "timestamp": "1710870097",
    "create_date": "2024-03-19 14:41:37"
  },
  "CLPBRL": {
    "code": "CLP",
    "codein": "BRL",
    "name": "Peso Chileno/Real Brasileiro",
    "high": "0.00531",
    "low": "0.00519",
    "varBid": "-0.00011",
    "pctChange": "-2.08",
    "bid": "0.00519",
    "ask": "0.00519",
    "timestamp": "1710870196",
    "create_date": "2024-03-19 14:43:16"
  },
  "PYGBRL": {
    "code": "PYG",
    "codein": "BRL",
    "name": "Guarani Paraguaio/Real Brasileiro",
    "high": "0.00069",
    "low": "0.00069",
    "varBid": "0",
    "pctChange": "-0.34",
    "bid": "0.00069",
    "ask": "0.00069",
    "timestamp": "1710870196",
    "create_date": "2024-03-19 14:43:16"
  },
  "UYUBRL": {
    "code": "UYU",
    "codein": "BRL",
    "name": "Peso Uruguaio/Real Brasileiro",
    "high": "0.1314",
    "low": "0.1303",
    "varBid": "-0.0005",
    "pctChange": "-0.39",
    "bid": "0.1303",
    "ask": "0.1303",
    "timestamp": "1710870196",
    "create_date": "2024-03-19 14:43:16"
  },
  "EURBRL": {
    "code": "EUR",
    "codein": "BRL",
    "name": "Euro/Real Brasileiro",
    "high": "5.4827",
    "low": "5.4441",
    "varBid": "-0.0184",
    "pctChange": "-0.34",
    "bid": "5.4401",
    "ask": "5.4481",
    "timestamp": "1710870092",
    "create_date": "2024-03-19 14:41:32"
  },
  "GBPBRL": {
    "code": "GBP",
    "codein": "BRL",
    "name": "Libra Esterlina/Real Brasileiro",
    "high": "6.4158",
    "low": "6.3735",
    "varBid": "-0.0179",
    "pctChange": "-0.28",
    "bid": "6.3774",
    "ask": "6.3812",
    "timestamp": "1710870088",
    "create_date": "2024-03-19 14:41:28"
  },
  "CHFBRL": {
    "code": "CHF",
    "codein": "BRL",
    "name": "Franco Suíço/Real Brasileiro",
    "high": "5.6911",
    "low": "5.6397",
    "varBid": "-0.0144",
    "pctChange": "-0.25",
    "bid": "5.6383",
    "ask": "5.6466",
    "timestamp": "1710870092",
    "create_date": "2024-03-19 14:41:32"
  },
  "SEKBRL": {
    "code": "SEK",
    "codein": "BRL",
    "name": "Coroa Sueca/Real Brasileiro",
    "high": "0.483",
    "low": "0.4787",
    "varBid": "-0.0001",
    "pctChange": "-0.01",
    "bid": "0.4806",
    "ask": "0.4807",
    "timestamp": "1710870192",
    "create_date": "2024-03-19 14:43:12"
  },
  "DKKBRL": {
    "code": "DKK",
    "codein": "BRL",
    "name": "Coroa Dinamarquesa/Real Brasileiro",
    "high": "0.7353",
    "low": "0.7299",
    "varBid": "-0.0023",
    "pctChange": "-0.31",
    "bid": "0.7299",
    "ask": "0.73",
    "timestamp": "1710870183",
    "create_date": "2024-03-19 14:43:03"
  },
  "NOKBRL": {
    "code": "NOK",
    "codein": "BRL",
    "name": "Coroa Norueguesa/Real Brasileiro",
    "high": "0.4729",
    "low": "0.4697",
    "varBid": "-0.0004",
    "pctChange": "-0.08",
    "bid": "0.4707",
    "ask": "0.4707",
    "timestamp": "1710870188",
    "create_date": "2024-03-19 14:43:08"
  },
  "PLNBRL": {
    "code": "PLN",
    "codein": "BRL",
    "name": "Zlóti Polonês/Real Brasileiro",
    "high": "1.2684",
    "low": "1.2612",
    "varBid": "-0.0011",
    "pctChange": "-0.09",
    "bid": "1.2612",
    "ask": "1.2613",
    "timestamp": "1710870190",
    "create_date": "2024-03-19 14:43:10"
  },
  "CNYBRL": {
    "code": "CNY",
    "codein": "BRL",
    "name": "Yuan Chinês/Real Brasileiro",
    "high": "0.7021",
    "low": "0.6961",
    "varBid": "-0.0017",
    "pctChange": "-0.25",
    "bid": "0.6961",
    "ask": "0.6962",
    "timestamp": "1710870122",
    "create_date": "2024-03-19 14:42:02"
  },
  "JPYBRL": {
    "code": "JPY",
    "codein": "BRL",
    "name": "Iene Japonês/Real Brasileiro",
    "high": "0.03376",
    "low": "0.0332",
    "varBid": "-0.0005",
    "pctChange": "-1.48",
    "bid": "0.03319",
    "ask": "0.03321",
    "timestamp": "1710870094",
    "create_date": "2024-03-19 14:41:34"
  },
  "INRBRL": {
    "code": "INR",
    "codein": "BRL",
    "name": "Rúpia Indiana/Real Brasileiro",
    "high": "0.06088",
    "low": "0.06035",
    "varBid": "-0.00021",
    "pctChange": "-0.34",
    "bid": "0.06036",
    "ask": "0.06036",
    "timestamp": "1710870198",
    "create_date": "2024-03-19 14:43:18"
  },
  "HKDBRL": {
    "code": "HKD",
    "codein": "BRL",
    "name": "Dólar de Hong Kong/Real Brasileiro",
    "high": "0.6462",
    "low": "0.6406",
    "varBid": "-0.0017",
    "pctChange": "-0.26",
    "bid": "0.6407",
    "ask": "0.6407",
    "timestamp": "1710870184",
    "create_date": "2024-03-19 14:43:04"
  },
  "SGDBRL": {
    "code": "SGD",
    "codein": "BRL",
    "name": "Dólar de Cingapura/Real Brasileiro",
    "high": "3.7653",
    "low": "3.734",
    "varBid": "-0.0182",
    "pctChange": "-0.49",
    "bid": "3.7312",
    "ask": "3.7367",
    "timestamp": "1710870095",
    "create_date": "2024-03-19 14:41:35"
  },
  "AUDBRL": {
    "code": "AUD",
    "codein": "BRL",
    "name": "Dólar Australiano/Real Brasileiro",
    "high": "3.2949",
    "low": "3.2724",
    "varBid": "-0.0209",
    "pctChange": "-0.63",
    "bid": "3.2715",
    "ask": "3.2764",
    "timestamp": "1710870097",
    "create_date": "2024-03-19 14:41:37"
  },
  "NZDBRL": {
    "code": "NZD",
    "codein": "BRL",
    "name": "Dólar Neozelandês/Real Brasileiro",
    "high": "3.06",
    "low": "3.033",
    "varBid": "-0.0213",
    "pctChange": "-0.7",
    "bid": "3.0328",
    "ask": "3.0333",
    "timestamp": "1710870189",
    "create_date": "2024-03-19 14:43:09"
  }
};
