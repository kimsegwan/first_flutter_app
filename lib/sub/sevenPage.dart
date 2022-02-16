import 'package:flutter/material.dart';
import '../animalItem.dart';

// void main() {
//   runApp(SevenPage());
// }

class SevenPage extends StatelessWidget {
  final List<Animal> list;

  SevenPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubPage Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page Main'),
      ),
      body: Container(
        child: Center(
          child: Text('첫 번째 페이지'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        child: Center(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('돌아가기'),
            ),
          ),
        ),
      ),
    );
  }
}