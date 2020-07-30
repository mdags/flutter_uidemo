import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';
import 'package:progress_state_button/progress_button.dart';

class Login2Page extends StatefulWidget {
  @override
  _Login2PageState createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  FocusNode myFocusNode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  ButtonState stateOnlyText = ButtonState.idle;
  Widget buildCustomButton() {
    var progressTextButton = ProgressButton(
      stateWidgets: {
        ButtonState.idle: Text(
          "OTURUM AÇ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
        ButtonState.loading: Text(
          "Oturum Açılıyor",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
        ButtonState.fail: Text(
          "Hata",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
        ButtonState.success: Text(
          "Başarılı",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),
        )
      },
      stateColors: {
        ButtonState.idle: Variables.primaryColor,
        ButtonState.loading: Variables.secondaryColor,
        ButtonState.fail: Colors.red.shade300,
        ButtonState.success: Colors.green.shade400,
      },
      onPressed: onPressedCustomButton,
      state: stateOnlyText,
      padding: EdgeInsets.all(8.0),
    );
    return progressTextButton;
  }
  void onPressedCustomButton() {
    setState(() {
      switch (stateOnlyText) {
        case ButtonState.idle:
          stateOnlyText = ButtonState.loading;
          break;
        case ButtonState.loading:
          stateOnlyText = ButtonState.fail;
          break;
        case ButtonState.success:
          stateOnlyText = ButtonState.idle;
          break;
        case ButtonState.fail:
          stateOnlyText = ButtonState.success;
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login 2'),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.35,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.35,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    color: Variables.primaryColor.withOpacity(
                        0.3), //Colors.deepPurple[300],
                  ),
                  clipper: RoundedClipper(60),
                ),
                ClipPath(
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.33,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    color: Variables.secondaryColor, //Colors.deepPurpleAccent,
                  ),
                  clipper: RoundedClipper(50),
                ),
                Positioned(
                    top: -110,
                    left: -110,
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.30,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height * 0.30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              (MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.30) / 2),
                          color: Variables.primaryColor.withOpacity(
                              0.2) //Colors.deepPurple[300].withOpacity(0.3)
                      ),
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Variables
                                  .secondaryColor //Colors.deepPurpleAccent
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: -100,
                    left: 100,
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.36,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height * 0.36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              (MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.36) / 2),
                          color: Variables.primaryColor.withOpacity(
                              0.2) //Colors.deepPurple[300].withOpacity(0.3)
                      ),
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Variables
                                  .secondaryColor //Colors.deepPurpleAccent
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: -50,
                    left: 60,
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.15,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              (MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.15) / 2),
                          color: Variables.primaryColor.withOpacity(
                              0.2) //Colors.deepPurple[300].withOpacity(0.3)
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * 0.15 - 50),
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.33,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Column(
                    children: <Widget>[
                      Variables.logoUrl == "" ?
                      Image.asset(
                        "images/login1_logo.png",
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.15,
                        width: MediaQuery
                            .of(context)
                            .size
                            .height * 0.15,
                        fit: BoxFit.cover,
                      ) : Image.network(Variables.logoUrl,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.15,
                        width: MediaQuery
                            .of(context)
                            .size
                            .height * 0.15,
                        fit: BoxFit.cover,),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hoşgeldiniz",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.40,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 12, 20, 10),
              child: Form(
                key: _formKey,
                autovalidate: _autoValidate,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: validateEmail,
                      onSaved: (String val) {
                        _email = val;
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: "Kullanıcı Adı",
                        contentPadding: new EdgeInsets.symmetric(
                            vertical:
                            MediaQuery
                                .of(context)
                                .size
                                .height * 0.022,
                            horizontal: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      onFieldSubmitted: (String value) {
                        FocusScope.of(context).requestFocus(myFocusNode);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: validatePassword,
                      onSaved: (String val) {
                        _password = val;
                      },
                      focusNode: myFocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: "Şifre",
                        contentPadding: new EdgeInsets.symmetric(
                            vertical:
                            MediaQuery
                                .of(context)
                                .size
                                .height * 0.022,
                            horizontal: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    buildCustomButton(),
//                    SizedBox(
//                      height: 15,
//                    ),
//                    Container(
//                      child: GestureDetector(
//                          onTap: () {
//                            print("pressed");
//                            _validateInputs();
//                          },
//                          child: Container(
//                            height: MediaQuery.of(context).size.height * 0.065,
//                            decoration: BoxDecoration(
//                                color: Variables.primaryColor,//Colors.deepPurpleAccent,
//                                borderRadius:
//                                BorderRadius.all(Radius.circular(25))),
//                            child: Center(
//                              child: Text(
//                                "OTURUM AÇ",
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 16),
//                              ),
//                            ),
//                          )),
//                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 15),
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.05,
                        child: GestureDetector(
                          onTap: () {
                            print("signup");
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Yeni kullanıcı mısınız?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Kayıt Ol",
                                  style: TextStyle(
                                      color: Variables.secondaryColor,
                                      //Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _value1 = false;
  bool _autoValidate = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length < 6)
      return 'Password must be atleast 6 digits';
    else
      return null;
  }
}

class RoundedClipper extends CustomClipper<Path> {
  var differenceInHeights = 0;

  RoundedClipper(int differenceInHeights) {
    this.differenceInHeights = differenceInHeights;
  }

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - differenceInHeights);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}