// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/tempData/simulData.dart';

class SimulationPage extends StatefulWidget {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  @override
  Widget build(BuildContext context) {
    return (scenario_0.medium == '문자')
        ? Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                backgroundColor: Color(0xffffffff),
                elevation: 0,
                title: Text(scenario_0.phoneNumber,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w400))),
            body: Column(children: [
              Container(
                height: 67,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 160,
                      height: 30,
                      alignment: Alignment.center,
                      child: const Text(
                        '연락처에 추가',
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.45),
                          borderRadius: BorderRadius.circular(30))),
                  SizedBox(width: 10),
                  Container(
                      width: 160,
                      height: 30,
                      alignment: Alignment.center,
                      child: const Text(
                        '수신 차단',
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30))),
                ]),
              ),
              Container(
                child: Text('2022년 2월 9일 수요일',
                    style: TextStyle(
                        fontSize: 13, color: Colors.black.withOpacity(0.6))),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('image/messageProfile.png', width: 50)
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(color: Color(0xffC4C4C4).withOpacity(0.28), borderRadius: BorderRadius.circular(20)),
                    child: Text(scenario_0.actionSequence[0].contents),
                  ),
                ],
              )
            ]))

        // 카카오톡
        : Container();
  }
}
