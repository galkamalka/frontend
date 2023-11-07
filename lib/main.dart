import 'package:flutter/material.dart';
import 'dart:developer';

import './theme.dart';

import './pages/home.dart';
import './pages/mypage.dart';
import './pages/chat.dart';
import './pages/board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/post': (BuildContext context) => Board(),
        '/mypage': (BuildContext context) => Mypage(),
        '/chat': (BuildContext context) => Chat(),
      },
    );
  }
}