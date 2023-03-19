import 'dart:convert';

import 'package:coins/src/api/interfaces/api_interfaces.dart';
import 'package:coins/utils/consts.dart';

class APIMockModel implements APIModelInterface {
  @override
  Future<APIResponse> fetch({required String coins}) async {
    return await Future.delayed(
        const Duration(
          seconds: 0,
        ),
        () => jsonDecode(data));
  }
}

var data = jsonEncode(_data);

Map<String, dynamic> _data = {
  "USDBRL": {
    "code": "USD",
    "codein": "BRL",
    "name": "Dólar Americano/Real Brasileiro",
    "high": "5.2846",
    "low": "5.23",
    "varBid": "0.0514",
    "pctChange": "0.98",
    "bid": "5.2793",
    "ask": "5.2805",
    "timestamp": "1679086793",
    "create_date": "2023-03-17 17:59:53"
  },
  "CADBRL": {
    "code": "CAD",
    "codein": "BRL",
    "name": "Dólar Canadense/Real Brasileiro",
    "high": "3.8477",
    "low": "3.8084",
    "varBid": "0.0349",
    "pctChange": "0.92",
    "bid": "3.8442",
    "ask": "3.8462",
    "timestamp": "1679086796",
    "create_date": "2023-03-17 17:59:56"
  },
  "MXNBRL": {
    "code": "MXN",
    "codein": "BRL",
    "name": "Peso Mexicano/Real Brasileiro",
    "high": "0.2807",
    "low": "0.278",
    "varBid": "-0.0003",
    "pctChange": "-0.12",
    "bid": "0.2792",
    "ask": "0.2792",
    "timestamp": "1679086746",
    "create_date": "2023-03-17 17:59:06"
  },
  "CLPBRL": {
    "code": "CLP",
    "codein": "BRL",
    "name": "Peso Chileno/Real Brasileiro",
    "high": "0.00639",
    "low": "0.0063",
    "varBid": "0.00003",
    "pctChange": "0.53",
    "bid": "0.00639",
    "ask": "0.00639",
    "timestamp": "1679086753",
    "create_date": "2023-03-17 17:59:13"
  },
  "ARSBRL": {
    "code": "ARS",
    "codein": "BRL",
    "name": "Peso Argentino/Real Brasileiro",
    "high": "0.026",
    "low": "0.0258",
    "varBid": "0.0002",
    "pctChange": "0.78",
    "bid": "0.026",
    "ask": "0.026",
    "timestamp": "1679086796",
    "create_date": "2023-03-17 17:59:56"
  },
  "ZARBRL": {
    "code": "ZAR",
    "codein": "BRL",
    "name": "Rand Sul-Africano/Real Brasileiro",
    "high": "0.2876",
    "low": "0.2838",
    "varBid": "0.0026",
    "pctChange": "0.92",
    "bid": "0.2869",
    "ask": "0.287",
    "timestamp": "1679086752",
    "create_date": "2023-03-17 17:59:12"
  },
  "AEDBRL": {
    "code": "AED",
    "codein": "BRL",
    "name": "Dirham dos Emirados/Real Brasileiro",
    "high": "1.439",
    "low": "1.424",
    "varBid": "0.014",
    "pctChange": "0.98",
    "bid": "1.4369",
    "ask": "1.4379",
    "timestamp": "1679086795",
    "create_date": "2023-03-17 17:59:55"
  },
  "CNYBRL": {
    "code": "CNY",
    "codein": "BRL",
    "name": "Yuan Chinês/Real Brasileiro",
    "high": "0.7672",
    "low": "0.7583",
    "varBid": "0.0081",
    "pctChange": "1.07",
    "bid": "0.7666",
    "ask": "0.7668",
    "timestamp": "1679086742",
    "create_date": "2023-03-17 17:59:02"
  },
  "JPYBRL": {
    "code": "JPY",
    "codein": "BRL",
    "name": "Iene Japonês/Real Brasileiro",
    "high": "0.0401",
    "low": "0.0391",
    "varBid": "0.0009",
    "pctChange": "2.3",
    "bid": "0.04003",
    "ask": "0.04006",
    "timestamp": "1679086786",
    "create_date": "2023-03-17 17:59:46"
  },
  "RUBBRL": {
    "code": "RUB",
    "codein": "BRL",
    "name": "Rublo Russo/Real Brasileiro",
    "high": "0.06862",
    "low": "0.06807",
    "varBid": "0.00003",
    "pctChange": "0.05",
    "bid": "0.06852",
    "ask": "0.06853",
    "timestamp": "1679086754",
    "create_date": "2023-03-17 17:59:14"
  },
  "EURBRL": {
    "code": "EUR",
    "codein": "BRL",
    "name": "Euro/Real Brasileiro",
    "high": "5.6372",
    "low": "5.5475",
    "varBid": "0.0867",
    "pctChange": "1.56",
    "bid": "5.6298",
    "ask": "5.6332",
    "timestamp": "1679086797",
    "create_date": "2023-03-17 17:59:57"
  },
  "GBPBRL": {
    "code": "GBP",
    "codein": "BRL",
    "name": "Libra Esterlina/Real Brasileiro",
    "high": "6.4379",
    "low": "6.3302",
    "varBid": "0.0949",
    "pctChange": "1.5",
    "bid": "6.4226",
    "ask": "6.4274",
    "timestamp": "1679086795",
    "create_date": "2023-03-17 17:59:55"
  },
  "CHFBRL": {
    "code": "CHF",
    "codein": "BRL",
    "name": "Franco Suíço/Real Brasileiro",
    "high": "5.7038",
    "low": "5.6241",
    "varBid": "0.0737",
    "pctChange": "1.31",
    "bid": "5.697",
    "ask": "5.7007",
    "timestamp": "1679086796",
    "create_date": "2023-03-17 17:59:56"
  },
  "AUDBRL": {
    "code": "AUD",
    "codein": "BRL",
    "name": "Dólar Australiano/Real Brasileiro",
    "high": "3.5427",
    "low": "3.4787",
    "varBid": "0.0571",
    "pctChange": "1.64",
    "bid": "3.5352",
    "ask": "3.5371",
    "timestamp": "1679086796",
    "create_date": "2023-03-17 17:59:56"
  },
  "NZDBRL": {
    "code": "NZD",
    "codein": "BRL",
    "name": "Dólar Neozelandês/Real Brasileiro",
    "high": "3.3113",
    "low": "3.2399",
    "varBid": "0.0681",
    "pctChange": "2.1",
    "bid": "3.3102",
    "ask": "3.3109",
    "timestamp": "1679086747",
    "create_date": "2023-03-17 17:59:07"
  }
};
