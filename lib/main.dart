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
  // WidgetApp({Key key}) : super(key: key);
  WidgetApp() : super();
  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Example'),),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(15), child: Text('flutter')),
              Padding(padding: EdgeInsets.only(left: 20, right: 20), child: TextField()),
              Padding(padding: EdgeInsets.all(15), child: RaisedButton(child: Text('입력'), onPressed: () {},)),
              Text('flutter'),
              TextField(),
              RaisedButton(child: Text('입력'), onPressed: () {

              })
            ],
          ),
        ),
      ),
    );
  }
}