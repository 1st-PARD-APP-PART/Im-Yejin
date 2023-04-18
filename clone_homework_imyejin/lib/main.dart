import 'package:clone_homework_imyejin/main.dart';
import 'package:flutter/material.dart';

import 'Screen/Signup.dart';
import 'Screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 285,
            ),
            Image.asset(
              'assets/carrot.png',
              height: 193,
              width: 193,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '당신 근처의 당근마켓',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              '중고 거래부터 동네 정보까지,\n지금 내 동네를 선택하고 시작해보세요!',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(354, 56), primary: Color(0XFFFF7E36)),
                child: const Text('시작하기')),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('이미 계정이 있나요?', style: TextStyle(color: Colors.black)),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      '로그인',
                      style: TextStyle(color: Color(0XFFFF7E36)),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
