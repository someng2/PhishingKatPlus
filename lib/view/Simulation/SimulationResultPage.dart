// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/scenarioData.dart';
import 'package:get/get.dart';

import 'package:voskat/view/HomePage.dart';

class SimulationResultPage extends StatefulWidget {
  String sid;

  SimulationResultPage({Key? key, required this.sid}) : super(key: key);

  @override
  _SimulationResultPageState createState() => _SimulationResultPageState();
}

class _SimulationResultPageState extends State<SimulationResultPage> {
  @override
  Widget build(BuildContext context) {
    late Scenario scenario;

    // TODO: DB 에서 일치하는 sid 찾아서 scenario return
    if (widget.sid == 'A0-a') {
      scenario = scenario_A0a;
    } else {
      print('[ERROR] no matched scenario !!');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('시뮬레이션 결과 페이지'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100.h),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${calculateScore(scenario)}',
                  style:
                      TextStyle(fontSize: 45.sp, fontWeight: FontWeight.w600)),
              Text('  점')
            ],
          )),
          SizedBox(height: 70.h),
          Container(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20.sp)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                for (int i = 0; i < scenario.userActionSequence.length; i++)
                // Text('${scenario.userActionSequence[i].score}'),
                  Container(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child:
                          Text('•${scenario.userActionSequence[i].feedback}')),
              ],
            ),
          ),
          SizedBox(height: 100.h),
          Container(
              alignment: Alignment.center,
              child: TextButton(
                child: Text('훈련 종료'),
                onPressed: () {
                  scenario.userActionSequence.clear();
                  Get.offAll(HomePage());
                },
              ))
        ],
      )),
    );
  }

  int calculateScore(Scenario scenario) {
    int score = scenario.score;
    for (int i = 0; i < scenario.userActionSequence.length; i++) {
      score += scenario.userActionSequence[i].score;
    }

    return score;
  }
}
