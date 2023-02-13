import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'coinCard.dart';
import 'package:http/http.dart' as http;

import 'coinModel.dart';

class CoinBoard extends StatefulWidget {
  @override
  _CoinBoard createState() => _CoinBoard();
}

class _CoinBoard extends State<CoinBoard> {
  List<Coin> coins = [];
  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
      }
      return coinList;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  void refreshCoin() {
    fetchCoin().then((coinList) {
      setState(() {
        coins = coinList;
      });
    });
  }

  @override
  void initState() {
    refreshCoin();
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) => refreshCoin(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CoinCard(
          name: coins[index].name,
          symbol: coins[index].symbol,
          imageUrl: coins[index].imageUrl,
          price: coins[index].price.toDouble(),
          change: coins[index].change.toDouble(),
          changePercentage: coins[index].changePercentage.toDouble(),
        );
      },
      itemCount: coins.length,
    );
  }
}
