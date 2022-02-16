import 'package:first_flutter_app/sub/fivePage.dart';
import 'package:first_flutter_app/sub/threePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './animalItem.dart';
//import 'package:flutter/services.dart';
// import 'imageWidget.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';
import 'sub/threePage.dart';
import 'sub/fourPage.dart';
import 'sub/fivePage.dart';
import 'sub/sixPage.dart';
import 'sub/sevenPage.dart';

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

class _WidgetExampleState extends State<WidgetApp>
    with SingleTickerProviderStateMixin {
  String sum = '';
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();
  List _buttonList = ['더하기', '빼기', '곱하기', '나누기'];
  List<DropdownMenuItem<String>> _dropDownMenuItems = [];
  String _buttonText = "";
  TabController? controller;
  List<Animal> animalList = [];

  @override
  void initState() {
    super.initState();
    for (var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(child: Text(item), value: item));
    }
    _buttonText = _dropDownMenuItems[0].value.toString();
    controller = TabController(length: 7, vsync: this);
    controller!.addListener(() {
      if (!controller!.indexIsChanging) {
        print('이전 index, ${controller?.previousIndex}');
        print('현재 index, ${controller?.index}');
      }
    });
    animalList.add(Animal(
        animalName: '벌',
        kind: '곤충',
        imagePath: 'repo/images/bee.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '고양이',
        kind: '포유류',
        imagePath: 'repo/images/cat.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '젖소',
        kind: '포유류',
        imagePath: 'repo/images/cow.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '강아지',
        kind: '포유류',
        imagePath: 'repo/images/dog.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '여우',
        kind: '포유류',
        imagePath: 'repo/images/fox.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '원숭이',
        kind: '영장류',
        imagePath: 'repo/images/monkey.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '돼지',
        kind: '포유류',
        imagePath: 'repo/images/pig.png',
        flyExist: false));
    animalList.add(Animal(
        animalName: '늑대',
        kind: '포유류',
        imagePath: 'repo/images/wolf.png',
        flyExist: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: TabBarView(
        children: <Widget>[
          FirstApp(list: animalList),
          SecondApp(list: animalList),
          ThreePage(list: animalList),
          CupertinoMain(list: animalList),
          FivePage(list: animalList),
          SixPage(list: animalList),
          SevenPage(list: animalList),
        ],
        controller: controller,
      ),
      bottomNavigationBar: Container(
        height: 45,
        child: TabBar(
          indicatorWeight: 4,// 하단 막대크기 세로
          //indicatorSize: TabBarIndicatorSize.label, // 하단 막대크기 가로
          indicatorSize: TabBarIndicatorSize.tab,// 하단 막대크기 가로
          indicatorColor: Color(0xFFEE2233),// 하단 막대 색상
          labelColor: Colors.amber,// 선택된 탭의 텍스트 색상
          unselectedLabelColor: Color(0xFFFF2222),// 선택되지 않은 탭의 텍스트 색상
          dragStartBehavior: DragStartBehavior.start,  // ??
          overlayColor: MaterialStateProperty.all(Colors.redAccent),  // 영역 누르고 있을경우 색상
          labelStyle: TextStyle(
              color: Colors.blue,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.blueAccent),
          tabs: <Tab>[
            Tab(
                // text: '하나',
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                )),
            Tab(
                // text: '둘',
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.blue,
                )),
            Tab(
                // text: '셋',
                icon: Icon(
                  Icons.tab,
                  color: Colors.blue,
                )),
            Tab(
                // text: '넷',
                icon: Icon(
                    Icons.ios_share,
                    color: Colors.blue
                )),
            Tab(
                // text: '다섯',
                icon: Icon(
                    Icons.account_balance,
                    color: Colors.blue
                )),
            Tab(
              // text: '여섯',
                icon: Icon(
                    Icons.airline_seat_recline_extra_outlined,
                    color: Colors.blue
                )),
            Tab(
              icon: Icon(
                  Icons.add_moderator,
                color: Colors.blue
              )),
          ],
          controller: controller,
        ),
      ),
      /*Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('결과 : $sum', style: TextStyle(fontSize: 20))),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: value1,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: value2,
                  )),
              // Padding(padding: EdgeInsets.all(15), child: RaisedButton(onPressed: () {})),
              RaisedButton(
                  child: Row(
                    children: <Widget>[Icon(Icons.add), Text(_buttonText)],
                  ),
                  color: Colors.amber,
                  onPressed: () {
                    setState(() {
                      var value1Int = double.parse(value1.value.text);
                      var value2Int = double.parse(value2.value.text);
                      var result;
                      if (_buttonText == '더하기') {
                        result = value1Int + value2Int;
                      } else if (_buttonText == '빼기') {
                        result = value1Int - value2Int;
                      } else if (_buttonText == '곱하기') {
                        result = value1Int * value2Int;
                      } else {
                        result = value1Int / value2Int;
                      }
                      sum = '$result';
                    });
                  }),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: DropdownButton(
                    items: _dropDownMenuItems,
                    onChanged: (value) {
                      setState(() {
                        _buttonText = value.toString();
                      });
                    },
                    value: _buttonText,
                  )),
            ],
          ),
        ),
      ),*/
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
