import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';

class Detay1Page extends StatefulWidget {
  @override
  _Detay1PageState createState() => _Detay1PageState();
}

class _Detay1PageState extends State<Detay1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detay 1'),
      ),
      body: new Column(
          children: [
            new ListTile(
              leading: const Icon(Icons.person),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Ad Soyad",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.phone),
              title: new TextField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  hintText: "Telefon",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.email),
              title: new TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  hintText: "Eposta",
                ),
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 60,
              child: new RaisedButton(
                child: new Text(
                  'Kaydet',
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
                onPressed: () => null,
                color: Variables.primaryColor,
              ),
              margin: new EdgeInsets.only(
                  top: 20.0
              ),
            ),
          ]
      ),
    );
  }
}