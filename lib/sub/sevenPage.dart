import 'package:flutter/material.dart';
import '../seven/subDetail.dart';
import '../seven/secondDetail.dart';
import '../seven/thirdPage.dart';
import '../animalItem.dart';

// void main() {
//   runApp(SevenPage());
// }

class SevenPage extends StatelessWidget {
  final List<Animal> list;
  static const String _title = 'Widget Example';
  SevenPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => SubDetail(),
        '/second': (context) => SecondDetail(),
        '/third': (context) => ThirdDetail(),
      },
    );
  }
}