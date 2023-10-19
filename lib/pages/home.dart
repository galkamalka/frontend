import 'package:flutter/material.dart';
import 'dart:developer';

import '../theme.dart';

import './search.dart';


class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);

  var _itemList = ['인기순', '가격순'];
  var _selectedItemIndex = 0;

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
                  Text('매점', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: ThemePallete.mainColor)),
                  SizedBox(width: 21,),
                  Container(width: 2, height: 22, decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1))),
                  SizedBox(width: 21,),
                  Text('My', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromRGBO(178, 175, 175, 1)))
                ],),
                Icon(Icons.circle, size: 30, color: ThemePallete.mainColor,)
            ],)
          ),
        ),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    SizedBox(width: 18,),
                    Text('매점 혼잡도', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 12, 16, 20),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(236, 236, 236, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('지금 매점은 혼잡 상태입니다.', style: TextStyle(fontSize: 16),),
                      SizedBox(height: 10,),
                      LinearProgressIndicator(value: 0.2, minHeight: 20, borderRadius: BorderRadius.all(Radius.circular(10)), color: ThemePallete.mainColor, backgroundColor: Colors.grey,)
                    ],
                  )
                ),
                Row(
                  children: [
                    SizedBox(width: 18,),
                    Text('상품 순위', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
                    SizedBox(width: 6,),
                    SizedBox(
                      height: 25,
                      child: DropdownButton(
                        underline: SizedBox.shrink(),
                        value: _itemList[_selectedItemIndex],
                        items: _itemList.map(
                          (value) { 
                            return DropdownMenuItem (
                              value: value,
                              child: Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: ThemePallete.mainColor))
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          // setState(() {
                          //   _selectedItemIndex = _itemList.indexOf(value);
                          // });
                        },
                        iconDisabledColor: ThemePallete.mainColor,
                        iconEnabledColor: ThemePallete.mainColor,
                      )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 12, 16, 20),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(236, 236, 236, 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('01', style: TextStyle(color: Color.fromRGBO(178, 175, 175, 1), fontSize: 16, fontWeight: FontWeight.w700),),
                          SizedBox(width: 16,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: const Image(
                              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                              height: 55,
                            ),
                          ),
                          SizedBox(width: 24,),
                          Text('따옴바 딸기맛', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 14,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('02', style: TextStyle(color: Color.fromRGBO(178, 175, 175, 1), fontSize: 16, fontWeight: FontWeight.w700),),
                          SizedBox(width: 16,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: const Image(
                              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                              height: 55,
                            ),
                          ),
                          SizedBox(width: 24,),
                          Text('붕어싸만코', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 14,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('03', style: TextStyle(color: Color.fromRGBO(178, 175, 175, 1), fontSize: 16, fontWeight: FontWeight.w700),),
                          SizedBox(width: 16,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: const Image(
                              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                              height: 55,
                            ),
                          ),
                          SizedBox(width: 24,),
                          Text('뻥튀기', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ],
                  )
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Row(
                      children: [
                        SizedBox(width: 18,),
                        Text('신제품 건의', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_circle_outline_outlined, size: 24, color: ThemePallete.mainColor,),
                        SizedBox(width: 36,),
                      ],
                    )
                  ],
                ),
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
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: SizedBox(height: 48, width: 48, child: Column(children: [Icon(Icons.home_rounded, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('홈', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));

                  },
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: SizedBox(height: 48, width: 48, child: Column(children: [Icon(Icons.search, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('검색', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                  onTap: () {
                    
                  },
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: SizedBox(height: 48, width: 48, child: Column(children: [Icon(Icons.menu, color: Color.fromRGBO(173, 173, 173, 1), size: 24.0), Text('전체', style: TextStyle(color: Color.fromRGBO(173, 173, 173, 1), fontSize: 12.0),)])),
                  onTap: () {

                  }
                )
              ],
            )
          )
        )
      )
    );
  }
}