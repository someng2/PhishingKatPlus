// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/appContentsDB.dart';

import 'package:PhishingKatPlus/tempData/appContentsData.dart';

class AppContentsControllerDB extends GetxController {
  getContents(List<AppContentsDB> appContentsDB, String ac_id) {
    String _return = '';
    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].acid == ac_id) {
        _return = appContentsDB[i].contents;
        return _return;
      }
    }
    if (_return == '') {
      print(
          '[ERROR - getContents] Cannot find contents! Please check the parameter!');
    }
  }


  getAppContentIds(List<AppContentsDB> appContentsDB, String aid) {
    List<String> result = new List.empty(growable: true);

    for(int i = 0; i < appContentsDB.length; i++){
      if (appContentsDB[i].aid == aid){
        result.add(appContentsDB[i].acid);
      }
    }
    return result;
  }

  getContentId(List<AppContentsDB> appContentsDB, String aid){
    for(int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].aid == aid) {
        return appContentsDB[i].acid;
      }
    }
  }

//   getContentsType(String ac_id){
//     for(int i = 0; i < appContentsList.length; i++) {
//       if (appContentsList[i].ac_id == ac_id) {
//         return appContentsList[i].c_type;
//       }
//     }
//   }

  getContentsTypeAid(List<AppContentsDB> appContentsDB, String aid){
    List<String> result = new List.empty(growable: true);

    for(int i = 0; i < appContentsDB.length; i++){
      if (appContentsDB[i].aid == aid){
        result.add(appContentsDB[i].ctype);
      }
    }
    return result;
  }



  /// return type: AppContents
  getContentsWithOrder(List<AppContentsDB> appContentsDB, String sid, String ac_id, int order) {
    bool found = false;
    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].sid == sid &&
          appContentsDB[i].acid == ac_id &&
          appContentsDB[i].order == order) {
        // print(
        //     'getContentsWithOrder => [$order] ${appContentsList[i].contents}');

        found = true;
        return appContentsDB[i];
      }
    }
    if (!found) {
      print(
          '[ERROR - getContentsWithOrder] Cannot find contents! Please check the parameter!');
    }
  }



  getContentsWithType(List<AppContentsDB> appContentsDB, String ac_id, String c_type) {
    String _return = '';
    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].acid == ac_id &&
          appContentsDB[i].ctype.contains(c_type)) {
        // print(
        //     'getContentsWithType => [$c_type] ${appContentsList[i].contents}');
        _return = appContentsDB[i].contents;
        return _return;
      }
    }
    if (_return == '') {
      print(
          '[ERROR - getContentsWithType] Cannot find contents! Please check the parameter!');
    }
  }

  getContentsType(List<AppContentsDB> appContentsDB, String ac_id) {
    String _return = '';
    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].acid == ac_id) {
        _return = appContentsDB[i].ctype;
        print('getContentsType => $_return');
        return _return;
      }
    }
    if (_return == '') {
      print('[ERROR - getContentsType] Cannot find contents\' type!');
    }
  }


  getContentsCount(List<AppContentsDB> appContentsDB, String sid, String ac_id, String c_type) {
    int count = 0;

    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].sid == sid &&
          appContentsDB[i].acid == ac_id &&
          appContentsDB[i].ctype.contains(c_type)) {
        print('c_type : ${appContentsDB[i].ctype}');
        print(
            'isContaining [$i] : ${appContentsDB[i].ctype.contains(c_type)})');
        count ++;
      }
    }

    return count;
  }

  getContentsOrderWithType(List<AppContentsDB> appContentsDB, String ac_id, String c_type) {
    bool found = false;
    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].acid == ac_id &&
          appContentsDB[i].ctype.contains(c_type)) {
        found = true;
        return appContentsDB[i].order;
      }
    }
    if (!found) {
      print('[ERROR - getContentsOrderWithType] Cannot find contents\' order!');
    }
  }


  /// temp
  getContentsWithSidNType(String sid, String c_type) {
    bool found = false;
    for (int i = 0; i < maliciousAppList.length; i++) {
      if (maliciousAppList[i].sid == sid &&
          maliciousAppList[i].c_type.contains(c_type)) {
        found = true;
        return maliciousAppList[i].contents;
      }
    }
    if (!found) {
      print('[ERROR - getContentsOrderWithType] Cannot find contents\' order!');
    }
  }
}
