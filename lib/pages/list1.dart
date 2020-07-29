import 'package:flutter/material.dart';

class List1Page extends StatefulWidget {
  @override
  _List1PageState createState() => _List1PageState();
}

class _List1PageState extends State<List1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List 1'),
      ),
      body: ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('item $index'),
            subtitle: Text('Altyazı bilgisi'),
            trailing: Icon(Icons.navigate_next),
          );
        },
      ),
    );
  }
}