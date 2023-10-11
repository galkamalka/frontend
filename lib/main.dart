import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const mainColor = Color.fromRGBO(46, 164, 171, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Container(
            padding: EdgeInsets.fromLTRB(36, 64, 36, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text('매점', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: mainColor)),
                  SizedBox(width: 21,),
                  Container(width: 2, height: 22, decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1))),
                  SizedBox(width: 21,),
                  Text('My', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromRGBO(178, 175, 175, 1)))
                ],),
                Icon(Icons.circle, size: 30, color: mainColor,)
            ],)
          ),
        ),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  SizedBox(width: 18,),
                  Text('매점 혼잡도', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
                ],),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 12, 16, 0),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(236, 236, 236, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('지금 매점은 혼잡 상태입니다.', style: TextStyle(fontSize: 16),)
                    ],
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
            height: 60,
            padding: EdgeInsets.fromLTRB(36, 0, 36, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 48, width: 48, child: Column(children: [Icon(Icons.home_rounded, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('홈', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                SizedBox(height: 48, width: 48, child: Column(children: [Icon(Icons.search, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('검색', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                SizedBox(height: 48, width: 48, child: Column(children: [Icon(Icons.menu, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('전체', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
              ],
            )
          )
        )
      )
    );
  }
}