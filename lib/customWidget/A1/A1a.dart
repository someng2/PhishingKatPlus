// ignore_for_file: file_names
// <악성 앱 설치>

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/customWidget/A1/A1a_downloadSetting.dart';

class A1aPage extends StatefulWidget {
  String subtype;
  String appName;
  A1aPage({Key? key, required this.subtype, required this.appName}) : super(key: key);

  @override
  _A1aPageState createState() => _A1aPageState();
}

class _A1aPageState extends State<A1aPage> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    String appName = widget.appName;
    // appName = (widget.subtype == '대출사기') ? ('KB국민은행'): ('이름없음');

    return Scaffold(
        appBar: AppBar(
          // TODO: leading - 앱 icon image
          title: Text(appName),
          elevation: 5,
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                  // width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 10, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // TODO: 앱 아이콘으로 변경
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            appName,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('보안상의 이유로 이 경로를 통한 알 수 없는 앱을 휴대전화에 설치할 수 없습니다.'),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: TextButton(
                              child: Text(
                                '취소',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ),
                          Container(
                            child: TextButton(
                              child: Text(
                                '설정',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              onPressed: () {
                                Get.to(A1a_downloadSettingPage(subtype: widget.subtype, appName: appName),
                                    arguments: {'isSwitched' : isSwitched});
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            )
          ],
        )) ;
  }
}

