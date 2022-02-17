// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:voskat/customWidget/A1/A1a_app.dart';

class A1a_downloadPage extends StatefulWidget {
  String subtype;
  String appName;
  A1a_downloadPage({Key? key, required this.subtype, required this.appName})
      : super(key: key);

  @override
  _A1a_downloadPageState createState() => _A1a_downloadPageState();
}

class _A1a_downloadPageState extends State<A1a_downloadPage> {
  // String subtype = Get.arguments['subtype'];
  // String appName = Get.arguments['appName'];

  // double percent = 0.0;
  late Timer timer;
  String state = '설치 중...';

  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 1900), (_) {
      setState(() {
        state = '설치 완료!';
        timer.cancel();
        Get.to(A1a_appPage(subtype: widget.subtype, appName: widget.appName));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String subtype = widget.subtype;
    String appName = widget.appName;

    return Scaffold(
        appBar: AppBar(title: Text(appName)),
        body: Container(
          padding: EdgeInsets.only(top: 230),
          child: Column(children: [
            //   LinearPercentIndicator( //leaner progress bar
            //   animation: true,
            //   animationDuration: 100,
            //   lineHeight: 20.0,
            //   percent:percent/100,
            //   center: Text(
            //     percent.toString() + "%",
            //     style: TextStyle(
            //         fontSize: 12.0,
            //         fontWeight: FontWeight.w600,
            //         color: Colors.black),
            //   ),
            //   linearStrokeCap: LinearStrokeCap.roundAll,
            //   progressColor: Colors.blue[400],
            //   backgroundColor: Colors.grey[300],
            // ),
            Container(
              child: Icon(
                Icons.download_sharp,
                size: 70,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearPercentIndicator(
                  width: 330,
                  animation: true,
                  lineHeight: 8,
                  animationDuration: 1900,
                  percent: 1.0,
                  // linearStrokeCap: LinearStrokeCap.roundAll,
                  // barRadius: Radius.circular(5),
                  progressColor: Colors.teal,
                ),
              ],
            ),
            Container(padding: EdgeInsets.only(top: 10), child: Text(state))
          ]),
        ));
  }
}
