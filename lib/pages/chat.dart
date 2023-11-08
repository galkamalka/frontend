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
                    InkWell(child: Icon(Icons.notifications, color: Colors.yellow[700], size: 30), onTap: () => {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Noti(),
                        ),
                      )
                    }),
                  ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                ),
                Container(
                  height: 2.0,
                  width: double.infinity,
                  color: Color.fromRGBO(246, 246, 246, 1),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new ChatRoom(),
                      ),
                    )
                  },
                  child: Container(
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

class Noti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/noti.png');
  }
}

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
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
                    Row(children: [
                      InkWell(
                        onTap: () => {
                          Navigator.pop(context)
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 24,),
                      ),
                      Icon(Icons.circle, size: 40, color: Colors.grey[300]),
                      SizedBox(width: 10,),
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

                    ],),
                    Row(children: [
                      Icon(Icons.notifications, color: Colors.yellow[700], size: 30),
                      SizedBox(width: 5,),
                      Icon(Icons.power_settings_new_outlined, color: Colors.red[400], size: 30,),
                    ],)
                  ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                ),
                Container(
                  height: 2.0,
                  width: double.infinity,
                  color: Color.fromRGBO(246, 246, 246, 1),
                ),
                SizedBox(height: 10,),
                Icon(Icons.circle, size: 83, color: Colors.grey[300]),
                Text('디미오리', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
                SizedBox(height: 40,),
                Row(children: [
                  Expanded(flex: 1, child: Container(),),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                      ),
                      color: Color.fromRGBO(246, 246, 246, 1),
                    ),
                    child: Text('안녕하세요 선배님.!! 다름이 \n아니라, 디미고가 궁금해서요', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black), textAlign: TextAlign.left,),
                  ),
                  SizedBox(width: 10,),
                  ]
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                  Expanded(flex: 1, child: Container(),),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                      ),
                      color: Color.fromRGBO(246, 246, 246, 1),
                    ),
                    child: Text('디미고에 무슨 과가 있는지\n알려주실 수 있으실까요??', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black), textAlign: TextAlign.left,),
                  ),
                  SizedBox(width: 10,),
                  ]
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(24.0),
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                      ),
                      color: Color.fromRGBO(1, 153, 91, 0.15),
                    ),
                    child: Text('네 그럼요!!\n디미고에는 총 4개의 과가 있어요!!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black), textAlign: TextAlign.left,),
                  ),
                  ]
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(24.0),
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                      ),
                      color: Color.fromRGBO(1, 153, 91, 0.15),
                    ),
                    child: Text('이비즈니스과, 디지털콘텐츠과,\n해킹방어과, 그리고 웹 \n프로그래밍과까지!!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black), textAlign: TextAlign.left,),
                  ),
                  ]
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(24.0),
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                      ),
                      color: Color.fromRGBO(1, 153, 91, 0.15),
                    ),
                    child: Text('...', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black), textAlign: TextAlign.center,),
                  ),
                  ]
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                  // TextField(
                  //     style: TextStyle(fontSize: 16),
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(22),
                  //         borderSide: BorderSide.none
                  //       ),
                  //       hintText: '고등학교 찾아보기',
                  //       filled: true,
                  //       fillColor: Colors.white,
                  //       contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                  //     ),
                  //   ),
                  ],)
                ],)
              ],
            )
        ),
      );
  }
}