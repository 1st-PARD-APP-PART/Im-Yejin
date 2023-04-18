import 'package:clone_homework_imyejin/Screen/MyPage.dart';
import 'package:flutter/material.dart';

import 'Bottom.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.5,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '프로필 수정',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/profile.png',
                height: 171,
                width: 177,
              ),
              Container(
                height: 51,
                width: 358,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    '본인 이름을 적어주세요',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Divider(),
              ListTile(
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Text('사는곳',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
              Divider(),
              SizedBox(height: 351),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BottomNavigationBarExample()));
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(510, 95),
                      primary: Color(0XFFFF7E36)),
                  child: const Text('완료')),
            ],
          ),
        ));
  }
}
