import 'package:cex/widget/home_page/coin_board.dart';
import '../widget/home_page/bottom_bar.dart';
import 'package:flutter/material.dart';
import '../widget/home_page/wallet_board.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        shadowColor: Colors.white,
        title: ListTile(
          contentPadding: const EdgeInsets.only(
            left: 0,
          ),
          leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              shadowColor: Colors.white,
            ),
            onPressed: () {},
            child: const CircleAvatar(
              maxRadius: 22,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
            ),
          ),
          title: Text(
            'Bùi Đình Nguyên',
            style: Theme.of(context).textTheme.headline4,
          ),
          subtitle: Text(
            "Good morning",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 7,
          )
        ],
      ),
      body: Column(
        children: [
          const WalletBoard(),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Portfolios',
                  style: Theme.of(context).textTheme.headline3,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sell all',
                    style: TextStyle(
                        color: Color.fromRGBO(21, 115, 254, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            // child: MyPortfolios(),
            child: CoinBoard(),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
