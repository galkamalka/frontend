import 'package:app/pages/chat.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/board.dart';


class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                      Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Search(),
                        ),
                      );
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
                       Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Board(),
                        ),
                      );
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
                      Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Home(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(child: 
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: SizedBox(height: 48, child: Column(children: [Icon(Icons.chat_bubble_outline, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('채팅', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Chat(),
                        ),
                      );
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
          );
  }
}