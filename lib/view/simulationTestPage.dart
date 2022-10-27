import 'package:flutter/material.dart';
import 'package:PhishingKatPlus/view/Simulation/CustomAnalysisTestPage.dart';

import 'package:PhishingKatPlus/controller/user/UserController.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/globals.dart' as globals;

class SimulationTestPage extends StatefulWidget {
  const SimulationTestPage({Key? key}) : super(key: key);

  @override
  State<SimulationTestPage> createState() => _SimulationTestPageState();
}

class _SimulationTestPageState extends State<SimulationTestPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simulation 진행 페이지'),
      ),
    );
  }
}
