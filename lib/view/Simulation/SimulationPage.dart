// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/model/user/user.dart';
import 'package:voskat/tempData/simulData.dart';
import 'package:voskat/tempData/type&ageData.dart';
import 'package:voskat/tempData/userData.dart';
import 'package:voskat/controller/CustomSimulController.dart';

class SimulationPage extends StatefulWidget {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  @override
  User _user = user2;

  Widget build(BuildContext context) {
    CustomSimulController customSimulController =
        CustomSimulController(user: _user);
    var scenario =
        CustomSimulController(user: _user).getCustomSimulation(_user);

    return (scenario.medium == '문자')
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
                title: Text(scenario.phoneNumber,
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
                padding: EdgeInsets.only(bottom: 10),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child:
                          Image.asset('image/messageProfile.png', width: 50)),
                  SizedBox(width: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 275,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xffC4C4C4).withOpacity(0.28),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(scenario.actionSequence[0].contents1),
                            Container(
                              height: 20,
                              child: TextButton(
                                  child: Text(
                                    scenario.actionSequence[0].url,
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.to((scenario.actionSequence[1].widget));
                                  },
                                  style: TextButton.styleFrom(
                                      // backgroundColor: Colors.white,
                                      padding: EdgeInsets.all(0))),
                            ),
                            Text(scenario.actionSequence[0].contents2),
                          ],
                        ),
                      ),
                      Container(
                        // width: 50,
                        child: Text('오전 9:05',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.6))),
                        padding: EdgeInsets.only(bottom: 5, left: 3),
                      )
                    ],
                  ),
                ],
              )
            ]))

        // 카카오톡
        : Container();
  }
}
