import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명색
        elevation: 0.0,
        automaticallyImplyLeading: false, // 자동 버튼 생성 X
        title: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.ios_share,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true, // Body가 AppBar 부분까지 차지할 수 있게!
      body: Column(children: [
        SizedBox(
          width: double.infinity, // 가로 최대 길이
          height: 360,
          child: Image.asset(
            'assets/laptop.png',
            fit: BoxFit.cover, // width, height 크기에 딱 맞게 하겠다.
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Image.asset(
              'assets/profile.png',
              height: 60,
              width: 60,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('파드짱',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 3,
                  ),
                  Text('한동대',
                      style: TextStyle(
                          color: Color(0XFF717171),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Image.asset(
              'assets/37.5C.png',
              height: 67,
              width: 110,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 24),
        Row(
          children: [
            SizedBox(width: 28),
            Text('맥북',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 28),
            Text('새 상품 입니다.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        SizedBox(height: 120),
        Row(
          children: [
            SizedBox(width: 28),
            Text('관심 7',
                style: TextStyle(
                    color: Color(0XFF767070),
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
            SizedBox(width: 15),
            Icon(Icons.favorite_border, color: Colors.black),
          ],
        ),
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 8),
        Row(
          children: [
            SizedBox(width: 28),
            IconButton(
              icon: Icon(Icons.favorite_border,
                  color: Color(0XFFAAAAAA), size: 26),
              onPressed: () {},
            ),
            SizedBox(width: 15),
            SizedBox(
              height: 44,
              child: VerticalDivider(),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Text('790,000원',
                    style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 6,
                ),
                Text('가격 제안하기',
                    style: TextStyle(
                        color: Color(0XFFFD7D39),
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            SizedBox(
              width: 180,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(99, 45), primary: Color(0XFFFF7E36)),
                child: const Text('채팅하기')),
          ],
        ),
      ]),
    );
  }
}
