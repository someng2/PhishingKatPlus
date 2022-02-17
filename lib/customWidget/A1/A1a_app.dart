// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/customWidget/A2/A2a.dart';

// TODO: UI 업데이트

class A1a_appPage extends StatefulWidget {
  String subtype;
  String appName;
  A1a_appPage({Key? key, required this.subtype, required this.appName})
      : super(key: key);

  @override
  _A1a_appPageState createState() => _A1a_appPageState();
}

class _A1a_appPageState extends State<A1a_appPage> {
  @override
  Widget build(BuildContext context) {
    String appName = widget.appName;

    String info1 = (widget.subtype == '대출사기') ? '고객명' : '';
    String info2 = (widget.subtype == '대출사기') ? '주민등록번호' : '';

    final info1Controller = TextEditingController();
    final info2Controller = TextEditingController();
    final info3Controller = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text(appName),
          // leading: Container(),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.close),
          //     onPressed: () {
          //       bool isFilled = checkInfo(
          //           info1Controller, info2Controller, info3Controller);
          //     },
          //   )
          // ],
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Row(children: [
              Container(
                width: 110,
                padding: EdgeInsets.only(left: 20),
                child: Text(info1,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              Container(
                width: 180,
                height: 40,
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                    controller: info1Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 17)),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(children: [
              Container(
                width: 110,
                padding: EdgeInsets.only(left: 20),
                child: Text(info2,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              Container(
                width: 120,
                height: 40,
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                    controller: info2Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 16)),
              ),
              Container(child: Text(' - ', style: TextStyle(fontSize: 16))),
              Container(
                width: 100,
                height: 40,
                // padding: EdgeInsets.only(left: 20),
                child: TextField(
                    controller: info3Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 16)),
              )
            ]),
          ),
          SizedBox(height: 40),

          // U2-a
          Container(
              width: 120,
              child: ElevatedButton(
                child: Text('조회하기'),
                onPressed: () {
                  bool isFilled = checkInfo(
                      info1Controller, info2Controller, info3Controller);
                  if (!isFilled) {
                    Get.showSnackbar(
                      GetSnackBar(
                        title: '조회 불가!',
                        message: '모든 정보를 입력하세요.',
                        duration: Duration(seconds: 2),
                        snackPosition: SnackPosition.BOTTOM,
                      ),
                    );
                  } else {
                    Get.to(A2aPage(
                        subtype: widget.subtype, appName: widget.appName));
                  }
                },
              ))
        ]));
  }

  checkInfo(
    TextEditingController info1Controller,
    TextEditingController info2Controller,
    TextEditingController info3Controller,
  ) {
    bool isFilled = false;

    isFilled = ((info1Controller.text != '') &
        (info2Controller.text != '') &
        (info3Controller.text != ''));

    print('isFilled: $isFilled');
    return isFilled;
  }
}

