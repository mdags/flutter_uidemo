import 'package:flutter/material.dart';
import 'package:flutter_uidemo/pages/dashboard1.dart';
import 'package:flutter_uidemo/pages/home.dart';
import 'package:flutter_uidemo/pages/login1.dart';
import 'package:flutter_uidemo/pages/login2.dart';
import 'package:flutter_uidemo/pages/login3.dart';
import 'package:flutter_uidemo/pages/login4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/login1': (context) => Login1Page(),
        '/login2': (context) => Login2Page(),
        '/login3': (context) => Login3Page(),
        '/login4': (context) => Login4Page(),
        '/dashboard1': (context) => Dashboard1Page(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}