import 'package:flutter/material.dart';
import 'dart:developer';

import './theme.dart';

import './pages/home.dart';
import './pages/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _itemList = ['인기순', '가격순'];
  var _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}