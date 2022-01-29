import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../animalItem.dart';

class FivePage extends StatelessWidget {
  final List<Animal>? list;
  FivePage({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HttpApp(),
    );
  }
}

class HttpApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HttpApp();
}

class _HttpApp extends State<HttpApp> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Example'),
      ),
      body: Container(
        child: Center(
          child: Text('$result'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          dynamic url = 'http://www.google.com';
          dynamic response = await http.get(url);
          setState(() {
            result = response.body;
          });
        },
        child: Icon(Icons.file_download)
      ),
    );
  }
}