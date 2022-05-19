// ignore_for_file: file_names

import 'package:voskat/model/simulation/contentsList.dart';

List<ContentsList> contentsList = [
  ContentsList_1,
  ContentsList_2,
  ContentsList_3,
  ContentsList_4
];

ContentsList ContentsList_1 = ContentsList(
    cid: 'c_1',
    contentsType: 'text',
    contents:
        '[Web발신]\n[정부지원 대환대출 간편대출 신청]\n고객명 : 김OO\n고유번호: L98411\n본인인증PIN:');

ContentsList ContentsList_2 =
    ContentsList(cid: 'c_2', contentsType: 'url', contents: '166-345-11111');

ContentsList ContentsList_3 = ContentsList(
    cid: 'c_3',
    contentsType: 'text',
    contents:
        '담당자: 김미영\n① 상단의 본인인증 PIN 클릭\n② [본인인증] 클릭하여 앱다운로드 및 설치\n③ \'간편대출\' 클릭 후 신청서 작성\n④ 담당자 확인');

ContentsList ContentsList_4 =
    ContentsList(cid: 'c_4', contentsType: 'button', contents: '수신 차단');
