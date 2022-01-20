import 'package:flutter/cupertino.dart';
import '../animalItem.dart';

class CupertinoMain extends StatefulWidget {
  final List<Animal> list;
  CupertinoMain({Key? key, required this.list}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CupertinoMain();
  }
}

class _CupertinoMain extends State<CupertinoMain> {
  late CupertinoTabBar tabBar;

  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(tabBar: tabBar, tabBuilder: (context, value) {
        if(value == 0) {
          return Container(
            child: Center(
              child: Text('cupertino tab 1 '),
            ),
          );
        } else {
          return Container(
            child: Center(
              child: Text('cupertino tab 2 '),
            ),
          );
        }
      }),
    );
  }
}