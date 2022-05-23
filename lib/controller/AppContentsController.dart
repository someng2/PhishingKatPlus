// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/appContents.dart';
import 'package:voskat/model/simulation/contentsList.dart';
import 'package:flutter/material.dart';

import 'package:voskat/tempData/appContentsData.dart';
import 'package:voskat/tempData/contentsListData.dart';

class AppContentsController extends GetxController {

  getContents(String ac_id) {
    for(int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].ac_id == ac_id) {
        return appContentsList[i].contents;
      }
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

  getContentsType(String ac_id){
    for(int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].ac_id == ac_id) {
        return appContentsList[i].c_type;
      }
    }
  }

  getContentsTypeAid(String aid){
    List<String> result = new List.empty(growable: true);

    for(int i = 0; i < appContentsList.length; i++){
      if (appContentsList[i].aid == aid){
        result.add(appContentsList[i].c_type);
      }
    }
    return result;
  }




}