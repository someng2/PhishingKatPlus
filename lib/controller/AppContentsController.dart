// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/appContents.dart';
import 'package:voskat/model/simulation/contentsList.dart';
import 'package:flutter/material.dart';

import 'package:voskat/tempData/appContentsData.dart';
import 'package:voskat/tempData/contentsListData.dart';

class AppContentsController extends GetxController {
  getContents(String ac_id) {
    String _return = '';
    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].ac_id == ac_id) {
        _return = appContentsList[i].contents;
        return _return;
      }
    }
    if (_return == '') {
      print(
          '[ERROR - getContents] Cannot find contents! Please check the parameter!');
    }
  }


  getAppContentIds(String aid) {
    List<String> result = new List.empty(growable: true);

    for(int i = 0; i < appContentsList.length; i++){
      if (appContentsList[i].aid == aid){
        result.add(appContentsList[i].ac_id);
      }
    }
    return result;
  }

  getContentId(String aid){
    for(int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].aid == aid) {
        return appContentsList[i].ac_id;
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

  getContentsTypeAid(String aid){
    List<String> result = new List.empty(growable: true);

    for(int i = 0; i < appContentsList.length; i++){
      if (appContentsList[i].aid == aid){
        result.add(appContentsList[i].c_type);
      }
    }
    return result;
  }



  /// return type: AppContents
  getContentsWithOrder(String sid, String ac_id, int order) {
    bool found = false;
    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].sid == sid &&
          appContentsList[i].ac_id == ac_id &&
          appContentsList[i].order == order) {
        // print(
        //     'getContentsWithOrder => [$order] ${appContentsList[i].contents}');

        found = true;
        return appContentsList[i];
      }
    }
    if (!found) {
      print(
          '[ERROR - getContentsWithOrder] Cannot find contents! Please check the parameter!');
    }
  }



  getContentsWithType(String ac_id, String c_type) {
    String _return = '';
    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].ac_id == ac_id &&
          appContentsList[i].c_type.contains(c_type)) {
        // print(
        //     'getContentsWithType => [$c_type] ${appContentsList[i].contents}');
        _return = appContentsList[i].contents;
        return _return;
      }
    }
    if (_return == '') {
      print(
          '[ERROR - getContentsWithType] Cannot find contents! Please check the parameter!');
    }
  }

  getContentsType(String ac_id) {
    String _return = '';
    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].ac_id == ac_id) {
        _return = appContentsList[i].c_type;
        print('getContentsType => $_return');
        return _return;
      }
    }
    if (_return == '') {
      print('[ERROR - getContentsType] Cannot find contents\' type!');
    }
  }


  getContentsCount(String sid, String ac_id, String c_type) {
    int count = 0;

    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].sid == sid &&
          appContentsList[i].ac_id == ac_id &&
          appContentsList[i].c_type.contains(c_type)) {
        print('c_type : ${appContentsList[i].c_type}');
        print(
            'isContaining [$i] : ${appContentsList[i].c_type.contains(c_type)})');
        count ++;
      }
    }

    return count;
  }

  getContentsOrderWithType(String ac_id, String c_type) {
    bool found = false;
    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].ac_id == ac_id &&
          appContentsList[i].c_type.contains(c_type)) {
        found = true;
        return appContentsList[i].order;
      }
    }
    if (!found) {
      print('[ERROR - getContentsOrderWithType] Cannot find contents\' order!');
    }
  }
}
