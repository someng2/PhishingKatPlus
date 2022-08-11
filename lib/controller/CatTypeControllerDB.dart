// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/controller/SimulationResultControllerDB.dart';
import 'package:PhishingKatPlus/model/simulation/resultCatTypeDB.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/tempData/resultCatTypeData.dart';

class CatTypeControllerDB extends GetxController {

  getCatID(List<ResultCatTypeDB> catTypeDB, Scenario scenario) {
    String catID = '';
    int score = SimulationResultControllerDB().calculateScore(scenario);

    if (score <= 10) {
      catID = 'cat_1';
    } else if (score <= 20) {
      catID = 'cat_2';
    } else if (score <= 30) {
      catID = 'cat_3';
    } else if (score <= 50) {
      catID = 'cat_4';
    } else if (score <= 70) {
      catID = 'cat_5';
    } else if (score <= 80) {
      catID = 'cat_6';
    } else if (score <= 90) {
      catID = 'cat_7';
    } else {
      catID = 'cat_8';
    }
    return catID;
  }
  getCatDescriptionType(List<ResultCatTypeDB> catTypeDB, String catID) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].catDescription;
      }
    }
  }

  getCatName(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      print('getCatName - current id : ${catTypeDB[i].catid}');
      if (catTypeDB[i].catid == catID) {
        print('catID: ${catTypeDB[i].catid}');
        print('return catName: ${catTypeDB[i].catName}');
        return catTypeDB[i].catName;
      }
    }
  }

  getCatImage(List<ResultCatTypeDB> catTypeDB, String catID) {
    for (int i = 0; i < catTypeDB.length; i++) {
      // print('getCatImage - current id : ${catTypeDB[i].catid}');
      if (catTypeDB[i].catid == catID) {
        // print('catID: $catID');
        // print('getCatImage -> ${catTypeDB[i].catImage}');
        return catTypeDB[i].catImage;
      }
    }
  }

  getTitleDescription(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].titleDescription;
      }
    }
  }

  getTitleDescriptionSize(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].titleDescriptionSize;
      }
    }
  }

  getDescriptionList(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].catDescription;
      }
    }
  }

  checkPartnerExist(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return (catTypeDB[i].bestPartnerID != '');
      }
    }
  }

  getExampleScenario(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].exampleScenario;
      }
    }
  }

  getBestPartnerID(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].bestPartnerID;
      }
    }
  }

  getWorstPartnerID(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].worstPartnerID;
      }
    }
  }

  getCatExtraDescription(List<ResultCatTypeDB> catTypeDB, String catID, Scenario scenario) {
    for (int i = 0; i < catTypeDB.length; i++) {
      if (catTypeDB[i].catid == catID) {
        return catTypeDB[i].descriptionAsPartner;
      }
    }
  }
}
