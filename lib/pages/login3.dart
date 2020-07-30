import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';

class Login3Page extends StatefulWidget {
  @override
  _Login3PageState createState() => _Login3PageState();
}

class _Login3PageState extends State<Login3Page> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailReg = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final util = Util();
  bool isTermsAccepted = false;
  final secondary = Variables.secondaryColor;//Color(0xffffbb06);
  final AssetImage logo = new AssetImage('images/login1_logo.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login 3'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  secondary,
                  Variables.primaryColor
                ]
            )
        ),
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 40.0,bottom: 20.0),
                height: 80,
                child: Center()
            ),
            Text("FİRMA ADI".toUpperCase(), style: TextStyle(
                color: Colors.white70,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
            ),),
            Container(
              height: 128.0,
              width: 128.0,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: secondary,
                  radius: 100.0,
                  child: Variables.logoUrl==""? Image(image: this.logo, width: 145.0, height: 90.0,):
                      Image.network(Variables.logoUrl, width: 145.0, height: 90.0,),
              ),
            ),
            SizedBox(height: 40.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(
                      Icons.person,
                      color: secondary,)
                ),
                hintText: "Kullanıcı Adı",
                hintStyle: TextStyle(color: Colors.black54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),

            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(
                      Icons.lock,
                      color: secondary,)
                ),
                hintText: "Şifre",
                hintStyle: TextStyle(color: Colors.black54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.white,
                textColor: secondary,
                padding: const EdgeInsets.all(20.0),
                child: Text("Oturum Aç".toUpperCase()),
                onPressed: (){

                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ),
            Spacer(),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class Util {
  Color mainColor = Color.fromRGBO(14, 58, 160, 1);
}