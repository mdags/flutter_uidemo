import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  final _primaryColorTextController = TextEditingController();
  final _secondaryColorTextController = TextEditingController();
  final _splashUrlTextController = TextEditingController();
  final _logoUrlTextController = TextEditingController();

  Future<void> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    _primaryColorTextController.text = prefs.get("primary") ?? "";
    _secondaryColorTextController.text = prefs.get("secondary") ?? "";
    _splashUrlTextController.text = prefs.get("splash") ?? "";
    _logoUrlTextController.text = prefs.get("logo") ?? "";
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getSettings();
    });
  }

  Future<void> save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("primary", _primaryColorTextController.text);
    prefs.setString("secondary", _secondaryColorTextController.text);
    prefs.setString("splash", _splashUrlTextController.text);
    prefs.setString("logo", _logoUrlTextController.text);
    _showDialog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              formWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.save),
        onPressed: () {
          save();
        },
      ),
    );
  }

  Widget formWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _primaryColorTextController,
            decoration: InputDecoration(
                labelText: 'Ana Renk',
                hintText: 'Ana Renk'
            ),
          ),
          TextFormField(
            controller: _secondaryColorTextController,
            decoration: InputDecoration(
                labelText: 'İkincil Renk',
                hintText: 'İkincil Renk'
            ),
          ),
          TextFormField(
            controller: _splashUrlTextController,
            decoration: InputDecoration(
                labelText: 'Splash Url',
                hintText: 'Splash Url'
            ),
          ),
          TextFormField(
            controller: _logoUrlTextController,
            decoration: InputDecoration(
                labelText: 'Logo Url',
                hintText: 'Logo Url'
            ),
          ),
        ],
      ),
    );
  }

  _showDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Bilgi"),
          content: new Text("İşlem tamamlandı."),
          actions: <Widget>[
            FlatButton(
              child: Text('TAMAM'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));;
  }
}