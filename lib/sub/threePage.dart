import 'package:flutter/material.dart';
import '../animalItem.dart';

class ThreePage extends StatelessWidget {
  final List<Animal> list;

  ThreePage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('ListView'),
              subtitle: Text('Using ListTitle'),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              leading: FlutterLogo(
                size: 50.0,
              ),
              title: Text('Flutter'),
              trailing: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('뭐냐'),
                            content: Text('Icon Flutter'),
                          );
                        });
                  },
                  icon: Icon(Icons.autorenew)),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('뭐냐'),
                        content: Text('Flutter'),
                      );
                    });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                size: 50.0,
              ),
              title: Text('Contacts'),
              subtitle: Text('Add Phone Number'),
              trailing: IconButton(onPressed: () {
                showDialog(context: context, builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('뭐냐'),
                    content: Text('Icon Contacts'),
                  );
                });
              }, icon: Icon(Icons.add)),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('뭐냐'),
                        content: Text('contacts'),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
