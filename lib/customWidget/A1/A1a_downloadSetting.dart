// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class A1a_downloadSettingPage extends StatefulWidget {
  A1a_downloadSettingPage({Key? key}) : super(key: key);

  @override
  _A1a_downloadSettingPageState createState() => _A1a_downloadSettingPageState();
}

class _A1a_downloadSettingPageState extends State<A1a_downloadSettingPage> {
  bool isSwitched = Get.arguments['isSwitched'];

  // int buildIdx = Get.arguments['buildIdx'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('출처를 알 수 없는 앱 설치'),
          leading: TextButton(
            child: Icon(Icons.navigate_before, color: Colors.white,),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.95),
        body: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  height: 50,
                  child: Row(children: [
                    // TODO: 앱 아이콘으로 변경
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${Get.arguments['appName']}',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        Text('2.0.1',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.6)))
                      ],
                    )
                  ])),
              SizedBox(height: 10),
              Container(
                  padding:
                  EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '이 출처 허용',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        // activeTrackColor: Colors.lightGreenAccent,
                        // activeColor: prim,
                      )
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      '이 출처의 앱을 설치하면 휴대전화와 데이터가 손상될 수 있습니다.',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

