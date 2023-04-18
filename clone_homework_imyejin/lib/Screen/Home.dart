import 'package:clone_homework_imyejin/Screen/addItem.dart';
import 'package:clone_homework_imyejin/Screen/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(width: 10),
            Text('한동대',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 27,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 27,
              )),
          SizedBox(width: 27.5),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detailPage()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 13),
                              Image.asset(
                                'assets/phone.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(width: 13),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('S22 자급제 화이트 미개봉',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('군자동',
                                        style: TextStyle(
                                            color: Color(0XFF717171),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('750,000원',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 62),
                              Expanded(
                                  child: Column(
                                children: [
                                  SizedBox(height: 70),
                                  Row(
                                    children: [
                                      Icon(Icons.favorite_border,
                                          color: Color(0XFF444444)),
                                      SizedBox(width: 7),
                                      Text(
                                        '7',
                                        style: TextStyle(
                                            color: Color(0XFF444444),
                                            fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              )),
                            ],
                          ),
                        ),
                        SizedBox(height: 7),
                        Divider()
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFFFF7E36),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => addPage()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
