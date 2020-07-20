import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login4Page extends StatefulWidget {
  @override
  _Login4PageState createState() => _Login4PageState();
}

class _Login4PageState extends State<Login4Page> {
  final userNameController = new TextEditingController();
  final passwordController = new TextEditingController();
  bool hiddentText = true;

  void _toggleVisibility() {
    setState(() {
      hiddentText = !hiddentText;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login 4'),
      ),
      backgroundColor: Color(0xFFF2F3F8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _topBarWidget,

            SizedBox(
              height: 30.0,
            ),

            Column(
              children: <Widget>[


                TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
                    autocorrect: true,
                    obscureText: false,
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20.0, 15.0, 20.0, 15.0),
                        labelText: 'Kullanıcı Adı',
                        hintStyle: TextStyle(color: Color(0xFF5A7BB5)),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                    validator: (String value) {
                      if (value
                          .trim()
                          .isEmpty) return 'Kullanıcı Adı zorunludur.';
                    }),

                TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    autocorrect: false,
                    obscureText: hiddentText,
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: IconButton(
                            icon: hiddentText
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                            onPressed: _toggleVisibility,
                          ),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(
                            20.0, 15.0, 20.0, 15.0),
                        labelText: 'Şifre',
                        hintStyle: TextStyle(color: Color(0xFF5A7BB5)),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                    validator: (String value) {
                      if (value
                          .trim()
                          .isEmpty) return 'Şifre zorunludur.';
                    }),

                SizedBox(
                  height: 20.0,
                ),

                Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Container(
                          child: RaisedButton(
                            color: Theme
                                .of(context)
                                .primaryColor,
                            splashColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0)),
                            onPressed: () {

                            },
                            child: Text(
                              'Oturum Aç',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget get _topBarWidget =>
      Container(
        height: ScreenUtil().setHeight(650),
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0x70000000),
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    3.0, // horizontal, move right 10
                    3.0, // vertical, move down 10
                  )),
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(ScreenUtil().setWidth(150)),
                bottomRight: Radius.circular(ScreenUtil().setWidth(150))),
            color: Theme
                .of(context)
                .primaryColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 40.0),
                height: 128.0,
                width: 128.0,
                child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    radius: 100.0,
                    child: Image(
                      image: AssetImage('images/login4_logo.png'),
                      width: 122.0,
                      height: 122.0,
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                      'KAPLANLAR BCF MOBİL',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500))
              ),
            ),
          ],
        ),
      );
}
