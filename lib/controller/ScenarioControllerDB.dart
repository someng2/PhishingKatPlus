// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioDB.dart';
import 'package:PhishingKatPlus/tempData/scenarioData.dart';

class ScenarioControllerDB extends GetxController {
  getScenario(List<ScenarioDB> scenarioDB, String sid) {
    late ScenarioDB scenario;
    bool foundScenario = false;

    for (int i = 0; i < scenarioDB.length; i++) {
      if (sid == scenarioDB[i].sid) {
        print('getScenario - matched sid: ${scenarioDB[i].sid}');
        foundScenario = true;
        scenario = scenarioDB[i];
      }
    }
    if (!foundScenario) {
      print('[ERROR] getScenario - no matched scenario !!');
    }

    return scenario;
  }

  getSubtype(List<ScenarioDB> scenarioDB, String sid) {
    bool foundScenario = false;

    for (int i = 0; i < scenarioDB.length; i++) {
      if (sid == scenarioDB[i].sid) {
        print('matched sid:${scenarioDB[i].sid} ');
        foundScenario = true;
        return scenarioDB[i].subtype;
      }
    }
    if (!foundScenario) {
      print('[ERROR] getScenario - no matched scenario !!');
    }
  }
}
