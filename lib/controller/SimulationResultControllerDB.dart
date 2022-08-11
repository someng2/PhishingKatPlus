// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';

class SimulationResultControllerDB extends GetxController {
  int calculateScore(Scenario scenario) {
    int score = scenario.score;
    for (int i = 0; i < scenario.userActionSequence.length; i++) {
      print('calculateScore - [$i] ${scenario.userActionSequence[i].score} ');
      score += scenario.userActionSequence[i].score;
    }

    return score;
  }
}