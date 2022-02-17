// ignore_for_file: file_names

import 'package:flutter/material.dart';

class A2aPage extends StatelessWidget {
  String subtype;
  String appName;
  A2aPage({Key? key, required this.subtype, required this.appName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
        leading: Container(),
        actions: [
          // U3-a
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            Container(
                child: Row(children: [
              Text(
                '정보 조회 결과',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )
            ])),
            SizedBox(height:40),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
