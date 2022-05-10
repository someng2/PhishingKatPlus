// ignore_for_file: file_names

import 'package:voskat/model/simulation/appContents.dart';

List<AppContents> appContentsList = [
  appContents_1,
  appContents_2,
  appContents_3,
  appContents_4
];

// 대출사기 - 문자 내용

AppContents appContents_1 = AppContents(
  ac_id: 'ac_1',
  sid: 'A0-a',
  aid: 'A0-a',
  order: 1,
  c_type: 'text',
  contents: '[Web발신]\n[정부지원 대환대출 간편대출 신청]\n고객명 : 김OO\n고유번호: L98411\n본인인증PIN:',
  hasNextAction: false,
);

AppContents appContents_2 = AppContents(
    ac_id: 'ac_2',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 2,
    c_type: 'url',
    contents: '166-345-11111',
    hasNextAction: true);

AppContents appContents_3 = AppContents(
    ac_id: 'ac_3',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 3,
    c_type: 'text',
    contents:
        '담당자: 김미영\n① 상단의 본인인증 PIN 클릭\n② [본인인증] 클릭하여 앱다운로드 및 설치\n③ \'간편대출\' 클릭 후 신청서 작성\n④ 담당자 확인',
    hasNextAction: false);

// 대출사기 - 수신차단
AppContents appContents_4 = AppContents(
    ac_id: 'ac_4',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 1,
    c_type: 'button',
    contents: '수신 차단',
    hasNextAction: true);
