import 'package:flutter/material.dart';
// import 'imageWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: ImageWidgetApp(),
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget {
  WidgetApp({Key? key}) : super(key: key);

  // WidgetApp() : super();
  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {
  List _buttonList = ['더하기', '빼기', '곱하기', '나누기'];
  //List<DropdownButton<int>> _dropDownMenuItems = new List<DropdownButton<int>>.filled(0, 0, growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(15),
                  child: DropdownButton(
                    items: null,
                    onChanged: null,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
