import 'package:flutter/material.dart';

class addPage extends StatefulWidget {
  const addPage({super.key});

  @override
  State<addPage> createState() => _addPageState();
}

class _addPageState extends State<addPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.5,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.cancel_outlined, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '중고거래 글쓰기',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  '완료',
                  style: TextStyle(
                      color: Color(0XFFFF7E36),
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ))
          ],
        ),
        body: Center(
          child: Column(children: [
            Image.asset(
              'assets/camera.png',
              height: 135,
              width: 131,
            ),
            SizedBox(
              height: 22,
            ),
            Divider(),
            ListTile(
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Text('제목',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.normal))),
            Divider(),
            ListTile(
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Text('카테고리',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.normal))),
            Divider(),
            ListTile(
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Text('가격',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.normal))),
            Divider(),
          ]),
        ));
  }
}
