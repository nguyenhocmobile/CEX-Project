import 'package:cex/widget/home_page/coin_board.dart';
import 'package:flutter/material.dart';

class MyPortfolios extends StatelessWidget {
  const MyPortfolios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CoinBoard(),
    );
  }
}
