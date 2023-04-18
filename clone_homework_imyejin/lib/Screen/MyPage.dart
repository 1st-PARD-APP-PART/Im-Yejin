import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../main.dart';
import 'EditProfile.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            '나의 당근',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
          ),
        ),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text(
              '로그아웃',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 14),
            ),
          ),
          SizedBox(
            width: 35,
          )
        ],
      ),

      //첫번째 섹션
      body: Center(
          child: Column(children: <Widget>[
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Image.asset(
              'assets/profile.png',
              height: 125,
              width: 129,
            ),
            SizedBox(
              width: 60,
            ),
            Text('본인 이름',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 86,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()));
                },
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                )),
          ],
        ),

        Divider(),
        SizedBox(
          height: 20,
        ),

        //두번째 섹션
        Row(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                ),
                _Buildcontainer(Icons.list, '판매내역'),
                SizedBox(width: 60),
                _Buildcontainer(Icons.shopping_bag, '구매내역'),
                SizedBox(width: 60),
                _Buildcontainer(Icons.favorite, '관심목록'),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
        Divider(),
        //세번째 섹션

        SizedBox(
          height: 5,
        ),
        Text('최근 판매내역',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Divider(), /////////
        SizedBox(
          height: 13,
        ),
        Center(
          child: Stack(children: [
            Image.asset(
              'assets/phone.png',
              height: 300,
              width: 300,
            ),
            Opacity(
              opacity: 0.5, // 0부터 1까지의 값을 설정하여 투명도 조절 가능 (0: 완전 투명, 1: 완전 불투명)
              child: Container(
                width: 300,
                height: 300,
                color: Colors.white,
                child: Text(
                  '뿌옇게 보이는 위젯',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(102, 135, 101, 135),
              child: Text(
                '갤럭시 S22',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ]),
        ),
        SizedBox(
          height: 27,
        ),
      ])),

      //bottom bar
    );
  }

  Column _Buildcontainer(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 63,
          width: 63,
          child: Icon(
            icon,
            color: Color(0XFFFF7E36),
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFCEEE0),
            shape: BoxShape.circle,
          ),
        ),
        Text(label,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600))
      ],
    );
  }
}
