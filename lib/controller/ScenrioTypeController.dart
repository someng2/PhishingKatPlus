import 'package:get/get.dart';
import 'package:voskat/model/simulation/scenarioType.dart';
import 'package:voskat/tempData/scenarioTypeData.dart';

class ScenarioTypeController extends GetxController {

  getScenarioType(String type) {
    late ScenarioType scenarioType;

    for (int i = 0; i < scenarioTypeList.length; i++) {
      if (scenarioTypeList[i].type == type) {
        scenarioType = scenarioTypeList[i];
      }
    }
    return scenarioType;
  }



}