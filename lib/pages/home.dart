import 'package:flutter/material.dart';
import 'dart:developer';

import '../theme.dart';

import './search.dart';


class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);

  var _selectedItemIndex = 0;

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
                                  text: '구상은',
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
                  Container(
                    height: 40,
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide.none
                        ),
                        hintText: '고등학교 찾아보기',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                      ),
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
                    child: SingleChildScrollView(physics: BouncingScrollPhysics(),child: Column(children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        direction: Axis.horizontal,
                        spacing: 10.0, // gap between adjacent chips
                        runSpacing: 10.0, // gap between lines
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: ThemePallete.subColor,
                            child: Text('디미고', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: ThemePallete.subColor,
                            child: Text('한민고', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: ThemePallete.subColor,
                            child: Text('단원고', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                        ]
                      ,),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            color: ThemePallete.subColor,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [Icon(Icons.circle, size: 30, color: Colors.pink,), SizedBox(width: 10), Text('한국디지털미디어고등학교', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray))]),
                            SizedBox(height: 15,),
                            Text('[제 23회 특별전형 신입생 모집 안내]', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(height: 15,),
                            Text('학부모 및 신입생 여러분 안녕하세요.\n우선, 디미고에 많은 관심을 가져주셔서 감사합니다.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemePallete.gray))
                          ]
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            color: ThemePallete.subColor,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [Icon(Icons.circle, size: 30, color: Colors.pink,), SizedBox(width: 10), Text('한국디지털미디어고등학교', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray))]),
                            SizedBox(height: 15,),
                            Text('[제 23회 특별전형 신입생 모집 안내]', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(height: 15,),
                            Text('학부모 및 신입생 여러분 안녕하세요.\n우선, 디미고에 많은 관심을 가져주셔서 감사합니다.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemePallete.gray))
                          ]
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            color: ThemePallete.subColor,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [Icon(Icons.circle, size: 30, color: Colors.pink,), SizedBox(width: 10), Text('한국디지털미디어고등학교', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray))]),
                            SizedBox(height: 15,),
                            Text('[제 23회 특별전형 신입생 모집 안내]', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(height: 15,),
                            Text('학부모 및 신입생 여러분 안녕하세요.\n우선, 디미고에 많은 관심을 가져주셔서 감사합니다.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemePallete.gray))
                          ]
                        ),
                      ),
                    ],
                  )
                ),
                )
                )
              ],
            )
          ]
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          child: BottomAppBar(
            color: Colors.white,
            height: 60,
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: 
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: SizedBox(height: 48, child: Column(children: [Icon(Icons.search, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('질문게시판', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));

                    },
                  ),
                ),
                Expanded(child: 
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: SizedBox(height: 48, child: Column(children: [Icon(Icons.chat_outlined, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('자유게시판', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));

                    },
                  ),
                ),
                Expanded(child: 
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: SizedBox(height: 48, child: Column(children: [Icon(Icons.home_rounded, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('홈', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));

                    },
                  ),
                ),
                Expanded(child: 
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: SizedBox(height: 48, child: Column(children: [Icon(Icons.chat_bubble_outline, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('채팅', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                    onTap: () {
                      
                    },
                  ),
                ),
                Expanded(child: 
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: SizedBox(height: 48, child: Column(children: [Icon(Icons.settings_outlined, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('설정', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                    onTap: () {

                    }
                  ),
                )
              ],
            )
          )
        )
      )
    );
  }
}