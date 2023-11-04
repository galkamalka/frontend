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
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        // appBar: 
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: ThemePallete.mainColor),
                  child: Column(children: [
                    PreferredSize(
                    preferredSize: Size.fromHeight(120),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25, 50, 25, 15),
                      decoration: BoxDecoration(
                        color: ThemePallete.mainColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '마이페이지',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    ),
                                ),
                                TextSpan(
                                  text: '님\n안녕하세요!',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    ),
                                ),
                            ],
                          ), ),
                          Icon(Icons.circle, size: 50, color: Colors.white,)
                      ],)
                    ),
                  ),
                  ]),
                ),
                
                Container(
                  decoration: BoxDecoration(
                    color: ThemePallete.mainColor
                  ),
                  child: Container(
                    height: 530,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(55), topRight: Radius.circular(55)),
                      color: Colors.white
                    ),
                  )
                )
              ]
                    
            )
          ]
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          child: CustomAppBar(),
        )
      )
    );
  }
}