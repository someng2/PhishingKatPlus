// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/controller/SimulationResultController.dart';
import 'package:voskat/model/simulation/resultCatType.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/resultCatTypeData.dart';

class CatTypeController extends GetxController {

  getCatID(Scenario scenario) {
    String catID = '';
    int score = SimulationResultController().calculateScore(scenario);

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
      catID = 'cat_8';  // 엑죠틱
    }
    return catID;
  }
  getCatDescriptionType(String catID) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].catDescription;
      }
    }
  }

  getCatName(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      print('getCatName - current id : ${resultCatList[i].cat_id}');
      if (resultCatList[i].cat_id == catID) {
        print('catID: ${resultCatList[i].cat_id}');
        print('return catName: ${resultCatList[i].catName}');
        return resultCatList[i].catName;
      }
    }
  }

  getCatImage(String catID) {
    for (int i = 0; i < resultCatList.length; i++) {
      // print('getCatImage - current id : ${resultCatList[i].cat_id}');
      if (resultCatList[i].cat_id == catID) {
        // print('catID: $catID');
        // print('getCatImage -> ${resultCatList[i].catImage}');
        return resultCatList[i].catImage;
      }
    }
  }

  getTitleDescription(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].titleDescription;
      }
    }
  }

  getTitleDescriptionSize(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].titleDescriptionSize;
      }
    }
  }

  getDescriptionList(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].catDescriptionList;
      }
    }
  }

  checkPartnerExist(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return (resultCatList[i].bestPartnerID != '');
      }
    }
  }

  getExampleScenario(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].exampleScenario;
      }
    }
  }

  getBestPartnerID(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].bestPartnerID;
      }
    }
  }

  getWorstPartnerID(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].worstPartnerID;
      }
    }
  }

  getCatExtraDescription(String catID, Scenario scenario) {
    for (int i = 0; i < resultCatList.length; i++) {
      if (resultCatList[i].cat_id == catID) {
        return resultCatList[i].descriptionAsPartner;
      }
    }
  }
}
