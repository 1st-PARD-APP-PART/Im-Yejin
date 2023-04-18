import 'package:clone_homework_imyejin/Screen/Home.dart';
import 'package:clone_homework_imyejin/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../main.dart';
import 'Bottom.dart';
import 'MyPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0XFF444444),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(55, 0, 55, 0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    '안녕하세요!\n휴대폰 번호로 로그인 해주세요.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  Text(
                    '휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '휴대폰 번호 (- 없이 숫자만 입력)',
                ),
              ),
              SizedBox(
                height: 13,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BottomNavigationBarExample()));
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(390, 80),
                      primary: Color(0XFFFF7E36)),
                  child: const Text('로그인')),
            ],
          ),
        ));
  }
}
