// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/controller/SimulationResultController.dart';
import 'package:voskat/model/simulation/resultCatType.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/resultCatTypeData.dart';

class CatTypeController extends GetxController {
  getCatType(String catID, Scenario scenario) {
    int score = SimulationResultController().calculateScore(scenario);

    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return ((score <= 50)
            ? resultCatList[i].under50Type
            : resultCatList[i].over50Type);
      }
    }
  }

  getCatName(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].catName;
      }
    }
  }

  getCatImage(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].catImage;
      }
    }
  }

  getTitleDescription(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].titleDescription;
      }
    }
  }

  getTitleDescriptionSize(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].titleDescriptionSize;
      }
    }
  }

  getDescriptionList(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].descriptionList;
      }
    }
  }

  checkPartnerExist(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return (resultCatList[i].bestPartnerID != '');
      }
    }
  }

  getExampleScenario(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].exampleScenario;
      }
    }
  }

  getBestPartnerID(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].bestPartnerID;
      }
    }
  }

  getWorstPartnerID(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].worstPartnerID;
      }
    }
  }

  getCatDescription(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].catID == catID) {
        return resultCatList[i].catDesciprion;
      }
    }
  }
}
