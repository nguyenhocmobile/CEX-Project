import 'package:cex/widget/home_page/button_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          elevation: 30,
          iconSize: 40,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Markets',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: '',
            ),
            // BottomNavigationBarItem(
            //   icon: CircleAvatar(
            //     backgroundColor: Colors.red,
            //     child: CircleAvatar(
            //       backgroundColor: Colors.black,
            //       child: Icon(
            //         Icons.currency_exchange,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            //   label: '',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium_outlined),
              label: 'Futures',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Wallet',
            ),
          ],
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 50,
          bottom: 10,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
            ),
            // padding: EdgeInsets.all(0),
            child: CircleAvatar(
              maxRadius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                maxRadius: 17,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.currency_exchange,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
