import 'package:app/widgets/appBar.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/mypage.png');
  }
}