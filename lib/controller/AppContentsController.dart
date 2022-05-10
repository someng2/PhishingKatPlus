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



}