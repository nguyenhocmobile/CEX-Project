import 'package:flutter/material.dart';

class MyPortfolios extends StatelessWidget {
  const MyPortfolios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
          ),
          title: Text(
            'BTC',
            style: Theme.of(context).textTheme.headline4,
          ),
          subtitle: Text('Bitcoin'),
          trailing: Column(
            children: [
              Text(
                '\$29,198.24',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '+125.1',
                style: TextStyle(
                  color: Color.fromRGBO(4, 156, 107, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
