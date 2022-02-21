import 'package:flutter/material.dart';
import '../animalItem.dart';

class EightPage extends StatelessWidget {
  final List<Animal> list;
  EightPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  State createState() => _ListPage();
}

class _ListPage extends State<ListPage> {
  List<Map> list = [];

  @override
  void initState() {
    super.initState();
    list.add({'name': '카운트값 저장하기'});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            child: Row(
              children: [
                Text(
                    list[index]['name'],
                ),
              ],
            ),
          ),
          onTap: () {

          },
        );
      },
      itemCount: list.length,
    );
  }
}