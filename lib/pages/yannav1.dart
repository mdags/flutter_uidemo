import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';

class YanNav1Page extends StatefulWidget {
  @override
  _YanNav1PageState createState() => _YanNav1PageState();
}

class _YanNav1PageState extends State<YanNav1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yan Nav 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('Yan Nav 1'),
          ),
          RaisedButton(
            child: Text('Geri'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Başlık'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Menü 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Menü 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Menü 3'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
