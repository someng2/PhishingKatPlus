// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/tempData/scenarioData.dart';

class ScenarioController extends GetxController {
  // Rx<String> sid;
  //
  // ScenarioController({required String sid}) : this.sid = sid.obs;

  getScenario(String sid) {
    late Scenario scenario;
    bool foundScenario = false;

    for (int i = 0; i < scenarioList.length; i++) {
      if (sid == scenarioList[i].sid) {
        print('getScenario - matched sid: ${scenarioList[i].sid}');
        foundScenario = true;
        scenario = scenarioList[i];
      }
    }
    if (!foundScenario) {
      print('[ERROR] getScenario - no matched scenario !!');
    }

    return scenario;
  }

  getSubtype(String sid) {
    bool foundScenario = false;

    for (int i = 0; i < scenarioList.length; i++) {
      if (sid == scenarioList[i].sid) {
        print('matched sid:${scenarioList[i].sid} ');
        foundScenario = true;
        return scenarioList[i].subtype;
      }
    }
    if (!foundScenario) {
      print('[ERROR] getScenario - no matched scenario !!');
    }
  }
}
