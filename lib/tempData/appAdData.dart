// ignore_for_file: file_names

import 'package:PhishingKatPlus/model/simulation/appInfo.dart';
import 'package:PhishingKatPlus/tempData/appContentsData.dart';

List<String> AdAppContentsIDList_v1 = ['ac_102', 'ac_118', ];
List<String> AdAppContentsIDList_v2 = ['ac_119', 'ac_120'];

AppInfo AppAd_v1_1 = AppInfo(
  appName: 'YouTube',
  appIcon: 'image/phishingkatLogo.png',
    description: '설치됨',
);

AppInfo AppAd_v1_2 = AppInfo(
  appName: 'TikTok 틱톡',
  appIcon: 'image/phishingkatLogo.png',
  description: '4.0',
);

List<AppInfo> AppAdList_v1 = [AppAd_v1_1, AppAd_v1_2];

AppInfo AppAd_v2_1 = AppInfo(
  appName: '피싱캣',
  appIcon: 'image/phishingkatLogo.png',
  description: '5.0',
);


AppInfo AppAd_v2_2 = AppInfo(
  appName: '아무개앱',
  appIcon: 'image/phishingkatLogo.png',
  description: '3.5',
);

List<AppInfo> AppAdList_v2 = [AppAd_v2_1, AppAd_v2_2];