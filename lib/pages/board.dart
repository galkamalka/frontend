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
                    height: 670,
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
),
Container(
  padding: EdgeInsets.all(16),
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    border: Border.all(
      color: Color.fromARGB(255, 239, 248, 245),
      width: 4,
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          Text(
            '실시간 질문게시판',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 248,158,23),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios, 
            size: 20,
            color: Color.fromARGB(255, 248,158,23), 
          ),
        ],
      ),
      SizedBox(height: 10),
      // 여기에 새로운 Column을 추가합니다.
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.circle, size: 50, color: Colors.pink), 
    SizedBox(width: 10),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '디미거위',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              SizedBox(width: 5),
              Text(
                '3분',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
              Expanded(child: Container(), flex: 1),
              Text(
                '11/05',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
            ],
          ),
          Text(
            '디미고',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
          ),
        ],
      ),
    ),
  ],
)

            ],
      ),
            Wrap(
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        spacing: 10, 
        runSpacing: 0.00001, 
        children: <Widget>[
          ListTile(
            title: Text('디미고 우정학사 어때요?',
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
            ), trailing: Row(
        mainAxisSize: MainAxisSize.min, 
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {
             
            },
            color: Colors.grey,
            iconSize: 17.0,
            padding: EdgeInsets.zero, 
            constraints: BoxConstraints(),
          ),
          Text(' 4 '),
          IconButton(
            icon: Icon(Icons.thumb_down),
            onPressed: () {
             
            },
            color: Colors.grey,
            iconSize: 17.0,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
          Text(' 2 '),
          IconButton(
            icon: Icon(Icons.comment),
            onPressed: () {
            
            },
            color: Colors.grey,
            iconSize: 17.0,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
          Text(' 6 '),
        ],
      ),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FreeBoardPage()),
            );
            },
          ),

          Padding(
  padding: EdgeInsets.only(bottom: 9.0),
  child: Divider(
    height: 0.001,
    thickness: 1.0,
    indent: 16.0,
    endIndent: 20.0,
  ),
),

          
       Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.subdirectory_arrow_right, size:20,color:Colors.grey),
    InkWell(child: Icon(Icons.circle, size: 40, color: Color.fromARGB(255, 1,153,91)), onTap: () => {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserImage()),
            )
    },),
    SizedBox(width: 10),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '디미오리',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              SizedBox(width: 5),
              Text(
                '3분',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
              Expanded(child: Container(), flex: 1),
              Text(
                '11/05',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
            ],
          ),
          Text(
            '디미고',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
          ),Text(
          '우정학사 좋아요!! 방 친구들이랑 즐거운 추억도 쌓을 수 있고 :)',
          style: TextStyle(color: Colors.black,fontSize: 15), ),
          
          SizedBox(height: 10),
        ],
        
      ),
    ),
  ],
),
         
          Padding(
  padding: EdgeInsets.only(bottom: 9.0), 
  child: Divider(
    height: 0.1,
    thickness: 1.0,
    indent: 20.0,
    endIndent: 20.0,
  ),
),

           Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.subdirectory_arrow_right, size:20,color:Colors.grey),
    InkWell(child: Icon(Icons.circle, size: 40, color: Color.fromARGB(255, 1,153,91)), onTap: () => {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserImage()),
            )
    },),
    SizedBox(width: 10),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '디미오리',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              SizedBox(width: 5,),
              Text(
                '3분',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
              Expanded(child: Container(), flex: 1),
              Text(
                '11/05',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
            ],
          ),
          Text(
            '디미고',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
          ),Text(
          '우정학사 좋아요!! 방 친구들이랑 즐거운 추억도 쌓을 수 있고 :)',
          style: TextStyle(color: Colors.black,fontSize: 15), ),
          SizedBox(height: 10),
        ],
        
      ),
    ),
  ],
),

   
          Padding(
  padding: EdgeInsets.only(bottom: 7.0),
  child: Divider(
    height: 0.001,
    thickness: 1.0,
    indent: 16.0,
    endIndent: 20.0,
  ),
),



  Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.subdirectory_arrow_right, size:20,color:Colors.grey),
    Icon(Icons.circle, size: 40, color: Color.fromARGB(255, 1,153,91)), 
    SizedBox(width: 10),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '디미오리',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              SizedBox(width: 5),
              Text(
                '3분',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
              Expanded(child: Container(), flex: 1),
              Text(
                '11/05',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
              ),
            ],
          ),
          Text(
            '디미고',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: ThemePallete.gray),
          ),
          
          SizedBox(height: 10),
        ],
        
      ),
    ),
  ],
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

class UserImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/profile.png');
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