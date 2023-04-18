import 'package:flutter/material.dart';

class localPage extends StatefulWidget {
  const localPage({super.key});

  @override
  State<localPage> createState() => _localPageState();
}

class _localPageState extends State<localPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text(
                '근처 동네',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 19),
                            Text(
                              '경상북도 포항시 북구 흥해읍 한동로 558',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Divider()
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
