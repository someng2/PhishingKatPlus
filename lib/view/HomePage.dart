// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/view/Simulation/SimulationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('메인 페이지'),
          backgroundColor: Colors.white
        ),

        body: Center(
          child: Column(
            children: [
              TextButton(
                child: Text('맞춤형 모의훈련 페이지'),
                onPressed: () {
                  Get.to(SimulationPage());
                },
              ),

            ],
          ),
        ));
  }
}
