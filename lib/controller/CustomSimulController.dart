// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/model/user/user.dart';
import 'package:voskat/tempData/type&ageData.dart';
import 'package:voskat/tempData/scenarioData.dart';

class CustomSimulController extends GetxController {
  Rx<User> user;

  CustomSimulController({required User user}) : this.user = user.obs;

  getCustomSimulation(User user) {
    Scenario scenario;
    CustomSimulController customSimulController =
        CustomSimulController(user: user);

    List<String> typeList = customSimulController.user.value.typeNage.type;

    // user 연령대가 취약한 typelist random shuffle
    typeList.shuffle();

    for (int i = 0; typeList[i] != null; i++) {
      for (int j = 0; scenarioList[j] != null; j++) {
        if (scenarioList[j].subtype == typeList[i]) {
          print(
              'matched scenario for ${user.name} : ${scenarioList[j].subtype}');
          scenario = scenarioList[j];
          return scenario;
        }
      }
    }
    print('no matched scenario for ${user.name}');
  }


}
