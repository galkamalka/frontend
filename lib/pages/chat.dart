import 'package:app/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

import '../theme.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        // appBar: 
        body: Column(
          children: [
            SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(children: [
                    Text('채팅', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, color: Colors.black),),
                    Icon(Icons.notifications, color: Colors.yellow[700], size: 30)
                  ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                ),
                Container(
                  height: 2.0,
                  width: double.infinity,
                  color: Color.fromRGBO(246, 246, 246, 1),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(children: [
                    Icon(Icons.circle, size: 65, color: Colors.grey[300]),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text('디미오리', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
                            SizedBox(width: 20,),
                            RoundedBackgroundText(
                              '디미고',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,),
                              backgroundColor: Color.fromRGBO(255, 198, 47, 1),
                            ),
                          ]),
                          // Text('19:08'),
                      ],),
                      Text('네넹! 궁금한 점은 편안하게..', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
                    ], ),
                  ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(children: [
                    Icon(Icons.circle, size: 65, color: Colors.grey[300]),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text('디미레오', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
                            SizedBox(width: 20,),
                            RoundedBackgroundText(
                              '디미고',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,),
                              backgroundColor: Color.fromRGBO(255, 198, 47, 1),
                            ),
                          ]),
                          // Text('19:08'),
                      ],),
                      Text('근데 생각보다 나쁘지 않아..', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
                    ], ),
                  ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(children: [
                    Icon(Icons.circle, size: 65, color: Colors.grey[300]),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text('단원당근', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
                            SizedBox(width: 20,),
                            RoundedBackgroundText(
                              '단원고',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,),
                              backgroundColor: Colors.amber[700],
                            ),
                          ]),
                          // Text('19:08'),
                      ],),
                      Text('네네 맞아요.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
                    ], ),
                  ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(children: [
                    Icon(Icons.circle, size: 65, color: Colors.grey[300]),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text('디미치즈', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
                            SizedBox(width: 20,),
                            RoundedBackgroundText(
                              '디미고',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,),
                              backgroundColor: Color.fromRGBO(255, 198, 47, 1),
                            ),
                          ]),
                          // Text('19:08'),
                      ],),
                      Text('아니요. 면접은 특전일전 모두..', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
                    ], ),
                  ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(children: [
                    Icon(Icons.circle, size: 65, color: Colors.grey[300]),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text('한민구리', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
                            SizedBox(width: 20,),
                            RoundedBackgroundText(
                              '한민고',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,),
                              backgroundColor: Colors.green[400],
                            ),
                          ]),
                          // Text('19:08'),
                      ],),
                      Text('오 그래요??', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
                    ], ),
                  ],
                  ),
                ),
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