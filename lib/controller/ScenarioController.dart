// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/scenarioData.dart';

class ScenarioController extends GetxController {
  // Rx<String> sid;
  //
  // ScenarioController({required String sid})
  //     : this.sid = sid.obs;

  getScenario(String sid) {
    late Scenario scenario;

    for (int i = 0; i < scenarioList.length; i++) {
      if (sid == scenarioList[i].sid) {
        print('matched sid: ${scenarioList[i].sid}');
        scenario = scenarioList[i];
      }
    }

    return scenario;
  }
}