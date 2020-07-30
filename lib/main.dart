import 'package:flutter/material.dart';
import 'package:flutter_uidemo/pages/altnav1.dart';
import 'package:flutter_uidemo/pages/altnav2.dart';
import 'package:flutter_uidemo/pages/altnav3.dart';
import 'package:flutter_uidemo/pages/dashboard1.dart';
import 'package:flutter_uidemo/pages/dashboard2.dart';
import 'package:flutter_uidemo/pages/dashboard3.dart';
import 'package:flutter_uidemo/pages/dashboard4.dart';
import 'package:flutter_uidemo/pages/detay1.dart';
import 'package:flutter_uidemo/pages/detay2.dart';
import 'package:flutter_uidemo/pages/detay3.dart';
import 'package:flutter_uidemo/pages/home.dart';
import 'package:flutter_uidemo/pages/list1.dart';
import 'package:flutter_uidemo/pages/list2.dart';
import 'package:flutter_uidemo/pages/list3.dart';
import 'package:flutter_uidemo/pages/list4.dart';
import 'package:flutter_uidemo/pages/login1.dart';
import 'package:flutter_uidemo/pages/login2.dart';
import 'package:flutter_uidemo/pages/login3.dart';
import 'package:flutter_uidemo/pages/login3onboard.dart';
import 'package:flutter_uidemo/pages/login4.dart';
import 'package:flutter_uidemo/pages/yannav1.dart';
import 'package:flutter_uidemo/pages/yannav2.dart';

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
        '/login3onboard': (context) => Login3OnBoardPage(),
        '/login4': (context) => Login4Page(),
        '/dashboard1': (context) => Dashboard1Page(),
        '/dashboard2': (context) => Dashboard2Page(),
        '/dashboard3': (context) => Dashboard3Page(),
        '/dashboard4': (context) => Dashboard4Page(),
        '/altnav1': (context) => AltNav1Page(),
        '/altnav2': (context) => AltNav2Page(),
        '/altnav3': (context) => AltNav3Page(),
        '/yannav1': (context) => YanNav1Page(),
        '/yannav2': (context) => YanNav2Page(),
        '/list1': (context) => List1Page(),
        '/list2': (context) => List2Page(),
        '/list3': (context) => List3Page(),
        '/list4': (context) => List4Page(),
        '/detay1': (context) => Detay1Page(),
        '/detay2': (context) => Detay2Page(),
        '/detay3': (context) => Detay3Page(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}