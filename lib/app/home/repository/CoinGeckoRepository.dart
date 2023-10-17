import 'dart:convert';

import 'package:crypto_watch/app/home/model/CoinGeckoItem.dart';
import 'package:http/http.dart' as http;

abstract class CoinGeckoRepositoryImpl {
  Future<List<CoinGeckoItem>> findCryptoInfoByCoinGeckoApi();
}

class CoinGeckoRepository implements CoinGeckoRepositoryImpl {
  final apiUrlBase = 'https://api.coingecko.com/api/v3/';

  @override
  Future<List<CoinGeckoItem>> findCryptoInfoByCoinGeckoApi() async {
    final response = await http.get((Uri.parse(
        '${apiUrlBase}coins/markets?vs_currency=brl&order=market_cap_desc&per_page=20&page=1&sparkline=false')));

    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map((resp) => CoinGeckoItem.fromMap(resp)).toList();
  }
}
