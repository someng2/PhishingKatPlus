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

    if (widget.sid == 'A0-a') {
      scenario = scenario_A0a;
    } else {
      print('no scenario matched!!');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('시뮬레이션 결과 페이지'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(height: 100.h),

          for (int i = 0; i < scenario.userActionSequence.length; i++)
            Center(
              child: Column(
                children: [
                  Text('${scenario.userActionSequence[i].score}'),
                  Text(scenario.userActionSequence[i].feedback),
                ],
              ),
            ),
          SizedBox(height: 100.h),
          Container(
              child: TextButton(
            child: Text('훈련 종료'),
            onPressed: () {
              Get.offAll(HomePage());
            },
          ))
        ],
      )),
    );
  }
}
