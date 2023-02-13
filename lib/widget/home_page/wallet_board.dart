import 'package:flutter/material.dart';
import '../home_page/button_main_handle.dart';

class WalletBoard extends StatelessWidget {
  const WalletBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.only(
                left: 15,
                top: 15,
                right: 15,
              ),
              color: Theme.of(context).backgroundColor,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My balance',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              '\$25,901.0.',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$1,521.4',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: const EdgeInsets.only(right: 7),
                            color: const Color.fromRGBO(223, 241, 255, 1),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Color.fromRGBO(4, 156, 107, 1),
                                ),
                                Text(
                                  '810%',
                                  style: TextStyle(
                                    color: Color.fromRGBO(4, 156, 107, 1),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, right: 10),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonMainHandle(
                              icon: Icons.stacked_line_chart_sharp,
                              title: 'Analytics'),
                          ButtonMainHandle(
                            icon: Icons.arrow_upward,
                            title: 'Sell',
                          ),
                          ButtonMainHandle(
                            icon: Icons.arrow_forward,
                            title: 'Send Crypto',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
