import 'package:flutter/material.dart';
import './screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        accentColor: Colors.white,
        backgroundColor: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
          headline3: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 19),
          headline4: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 17),
          headline6: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Color.fromRGBO(71, 71, 71, 1),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
