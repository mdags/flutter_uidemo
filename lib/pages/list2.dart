import 'package:flutter/material.dart';

class List2Page extends StatefulWidget {
  @override
  _List2PageState createState() => _List2PageState();
}

class _List2PageState extends State<List2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List 2'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Yatay Liste',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Center(child: Text('Resim veya yazı gelebilir')),
                ),
              ),
            ),
            Text(
              'Dikey Liste',
              style: TextStyle(fontSize: 18),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
            Card(
              child: ListTile(title: Text('Başlık'), subtitle: Text('alt açıklama alanı')),
            ),
          ],
        ),
      ),
    );
  }
}
