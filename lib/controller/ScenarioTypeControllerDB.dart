// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioType.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioTypeDB.dart';
import 'package:PhishingKatPlus/tempData/scenarioTypeData.dart';

class ScenarioTypeController extends GetxController {

  getScenarioType(List<ScenarioTypeDB> scenarioTypeDB, String subtype) {
    late ScenarioTypeDB scenarioType;

    for (int i = 0; i < scenarioTypeDB.length; i++) {
      if (scenarioTypeDB[i].subtype == subtype) {
        scenarioType = scenarioTypeDB[i];
      }
    }
    return scenarioType;
  }

  getWidget(List<ScenarioTypeDB> scenarioTypeDB, ScenarioType type){
    for (int i = 0; i < scenarioTypeDB.length; i++) {
      if (scenarioTypeDB[i].subtype == type) {
        return scenarioTypeDB[i].widget;
      }
    }
  }

  getMedalImage(List<ScenarioTypeDB> scenarioTypeDB, int medal){
    if(medal == 0){
      return 'image/medalBronze.png';
    }
    else if (medal == 1){
      return 'image/medalBronze.png';
    }else if (medal == 2){
      return 'image/medalSilver.png';
    }else if (medal == 3){
      return 'image/medalGold.png';
    }
    else{
      print('[ERROR] medal');
    }
  }



}