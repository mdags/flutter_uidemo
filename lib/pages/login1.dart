import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';
import 'package:splashscreen/splashscreen.dart';

class Login1Page extends StatefulWidget {
  @override
  _Login1PageState createState() => _Login1PageState();
}

class _Login1PageState extends State<Login1Page> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: AfterSplash(),
        title: Text('FİRMA ADI',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white
          ),
        ),
        image: Variables.logoUrl == ""
            ? Image.asset('images/login1_logo.png')
            : Image.network(Variables.logoUrl),
        backgroundColor: Colors.white,
        imageBackground: Variables.splashUrl == "" ? AssetImage(
            'images/background.png') : NetworkImage(Variables.splashUrl),
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 64.0,
        //onClick: () => print("Flutter Egypt"),
        loaderColor: Variables.primaryColor
    );
  }
}

class AfterSplash extends StatelessWidget {
  final Color backgroundColor1 = Variables.primaryColor; //Color(0xFF444152);
  final Color backgroundColor2 = Variables.secondaryColor; //Color(0xFF6f6c7d);
  final Color highlightColor = Color(0xFF0067A4);
  final Color foregroundColor = Colors.white;
  final AssetImage logo = new AssetImage("images/login1_logo.png");
  final NetworkImage logo1 = new NetworkImage(Variables.logoUrl);

  void login() async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login 1"),
      ),
      body: loginWidget(context),
    );
  }

  Widget loginWidget(context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 0.0),
          // 10% of the width, so there are ten blinds.
          colors: [this.backgroundColor1, this.backgroundColor2],
          // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      height: MediaQuery
          .of(context)
          .size
          .height,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
            child: Center(
              child: new Column(
                children: <Widget>[
                  Container(
                    height: 128.0,
                    width: 128.0,
                    child: new CircleAvatar(
                        backgroundColor: Colors.transparent,
                        foregroundColor: this.foregroundColor,
                        radius: 100.0,
                        child: new Image(
                          image: Variables.logoUrl==""? this.logo:NetworkImage(Variables.logoUrl),
                          width: 90.0,
                          height: 110.0,)
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Text(
                      "FİRMA ADI",
                      style: TextStyle(
                          color: this.foregroundColor, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
          new Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: this.foregroundColor,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Padding(
                  padding:
                  EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                  child: Icon(
                    Icons.phone_android,
                    color: this.foregroundColor,
                  ),
                ),
                new Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Gsm no',
                      hintStyle: TextStyle(color: this.foregroundColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: this.foregroundColor,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Padding(
                  padding:
                  EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                  child: Icon(
                    Icons.lock_open,
                    color: this.foregroundColor,
                  ),
                ),
                new Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '*********',
                      hintStyle: TextStyle(color: this.foregroundColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    color: this.highlightColor,
                    onPressed: () async {
                      //Navigator.pushReplacementNamed(context, "/home");
                      login();
                    },
                    child: Text(
                      "Oturum Aç",
                      style: TextStyle(color: this.foregroundColor),
                    ),
                  ),
                ),
              ],
            ),
          ),

          new Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    color: Colors.transparent,
                    onPressed: () => {},
                    child: Text(
                      "Parolamı unuttum",
                      style: TextStyle(
                          color: this.foregroundColor.withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          new Expanded(child: Divider(),),

          new Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.only(
                left: 40.0, right: 40.0, top: 10.0, bottom: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    color: Colors.transparent,
                    onPressed: () => {},
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(
                          color: this.foregroundColor.withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: new Text("v3.0",
              style: TextStyle(color: this.foregroundColor.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}