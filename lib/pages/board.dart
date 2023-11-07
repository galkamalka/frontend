import 'package:app/widgets/appBar.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
void main() {
  runApp(Board());
}
class Board extends StatelessWidget {
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
                            ],
                          ), ),
                          
                      ],)
                    ),
                  ),
                  Container(
                    height: 10,
                    margin: EdgeInsets.fromLTRB(20, 0, 45, 20),
                   
                  ),
                  ]),
                ),
                
                Container(
                  decoration: BoxDecoration(
                    color: ThemePallete.mainColor
                  ),
                  child: Container(
                    height: 600,
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
                        spacing: 15.0, // gap between adjacent chips
                        runSpacing: 15.0, // gap between lines
                        children: [
                          Container(
  padding: EdgeInsets.all(16),
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    border: Border.all(
      color: Color.fromARGB(255, 239,248,245),
      width: 4,
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(width: 10),
      Center(
  child: Container(
    margin: EdgeInsets.all(0), // 원하는 마진 값을 설정하세요.
    child: Text(
      '즐겨찾는 게시판',
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.w800,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  ),
),
      Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        spacing: 10, // gap between adjacent chips
        runSpacing: 0.00001, // gap between lines
        children: <Widget>[
          ListTile(
            title: Text('자유게시판',
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color:Colors.black,),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FreeBoardPage()),
            );
            },
          ),

          Divider(
            height: 1.0,         
            thickness: 1.0,
            indent: 16.0,       
            endIndent: 16.0, 
          ), 
          ListTile(
            title: Text('질문게시판',style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w700),),
            trailing: Icon(Icons.arrow_forward_ios, color:Colors.black,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionBoardPage()),
              );
            }
          ),
          Divider(
            height: 1.0,         
            thickness: 1.0,
            indent: 16.0,       
            endIndent: 16.0,
          ), 
          ListTile(
            title: Text('홍보게시판',style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w700),),
            trailing: Icon(Icons.arrow_forward_ios, color:Colors.black,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PromotionBoardPage()),
              );
            },
          ),
        ],
      ),
    ],
  ),
)           
                        ],
                      ),
                      
                    ]
                    )
                    )
                  )
                )
              ]
                    
            ),
            
          ]
        ),
        
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          child: CustomAppBar(),
        )

    ));
  }
}
class FreeBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자유게시판'),
      ),
      body: Center(
        child: Text('자유게시판 내용'),
      ),
    );
  }
}

class QuestionBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('질문게시판'),
      ),
      body: Center(
        child: Text('질문게시판 내용'),
      ),
    );
  }
}

class PromotionBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홍보게시판'),
      ),
      body: Center(
        child: Text('홍보게시판 내용'),
      ),
    );
  }
}