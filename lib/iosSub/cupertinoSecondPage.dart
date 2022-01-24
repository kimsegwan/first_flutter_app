import 'package:flutter/cupertino.dart';
import '../animalItem.dart';

class CupertinoSecondPage extends StatefulWidget {
  final List<Animal> animalList;

  const CupertinoSecondPage({Key? key, required this.animalList})
      : super(key: key);

  @override
  State createState() {
    return _CupertinoSecondPage();
  }
}

class _CupertinoSecondPage extends State<CupertinoSecondPage> {
  late TextEditingController _textController;
  int? _kindChoice = 0;
  bool _flyExist = false;
  // String _imagePath;
  Map<int, Widget> segmentWidgets = {
    0: SizedBox(
      child: Text(
        '양서류',
        textAlign: TextAlign.center,
      ),
      width: 80,
    ),
    1: SizedBox(
      child: Text(
        '포유류',
        textAlign: TextAlign.center,
      ),
      width: 80,
    ),
    2: SizedBox(
      child: Text(
        '파충류',
        textAlign: TextAlign.center,
      ),
      width: 80,
    ),
  };

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('동물 추가'),
      ),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: _textController,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                ),
              ),
              CupertinoSegmentedControl(
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  groupValue: _kindChoice,
                  children: segmentWidgets,
                  onValueChanged: (value) {
                    setState(() {
                      _kindChoice = value as int;
                    });
                  }),
              Row(
                children: <Widget>[
                  Text('날개가 존재합니까?'),
                  CupertinoSwitch(value: _flyExist, onChanged: (value) {
                    setState(() {
                      _flyExist = value;
                    });
                  })
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 100,
                child: ListView(

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
