import 'package:app/widgets/appBar.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

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
                    ]
                    )
                    )
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