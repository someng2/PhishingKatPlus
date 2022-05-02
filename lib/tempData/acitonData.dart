// ignore_for_file: file_names

import 'package:voskat/view/customWidget/A2/A2aPage.dart';
import 'package:voskat/model/simulation/messageAction.dart';
import 'package:voskat/model/simulation/nonMessageAction.dart';
import 'package:voskat/view/customWidget/A1/A1aPage.dart';
import 'package:voskat/tempData/scenarioData.dart';
import 'package:voskat/tempData/maliciousAppData.dart';
import 'package:voskat/view/customWidget/A2/A2bPage.dart';

MessageAction A0a = MessageAction(
    sid: 'A0-a',
    aid: 'A0-a',
    contents1:
        '[Web발신]\n[정부지원 대환대출 간편대출 신청]\n고객명 : 김OO\n고유번호: L98411\n본인인증PIN:',
    url: '166-345-11111',
    contents2:
        '담당자: 김미영\n① 상단의 본인인증 PIN 클릭\n② [본인인증] 클릭하여 앱다운로드 및 설치\n③ \'간편대출\' 클릭 후 신청서 작성\n④ 담당자 확인');

MessageAction A0b = MessageAction(
    sid: 'A0-b',
    aid: 'A0-b',
    contents1: '신용카드\n일시불 27만원\n해외 승인완료\n본인사용이 아닐 시 확인부탁드립니다',
    url: 'https://bit.ly/3kfk6Zn',
    contents2: '');

MessageAction A0c = MessageAction(
    sid: 'A0-c',
    aid: 'A0-c',
    contents1: '[국외발신]\n[CJ 대한통운]\n해외배송 중 주소지 오류로\n배송 지연 중',
    url: 'https://muz.so/afYt',
    contents2: '주소지 확인요망');

NonMessageAction A1a_A0a = NonMessageAction(
    sid: 'A0-a',
    aid: 'A1-a',
    widget: A1aPage(
      sid: 'A0-a',
      subtype: '대출사기',
      appInfo: maliciousApp1,
    ));

NonMessageAction A1a_A0c = NonMessageAction(
    sid: 'A0-c',
    aid: 'A1-a',
    widget: A1aPage(
      sid: 'A0-c',
      subtype: '택배사칭',
      appInfo: maliciousApp2,
    ));

// TODO: info 를 parameter로 전달!
NonMessageAction A2a_A0a = NonMessageAction(
  sid: 'A0-a',
  aid: 'A2-a',
  widget: A2aPage(
    subtype: '대출사기',
    appInfo: maliciousApp1,
    sid: 'A0-a',
    info2_2: 'a',
    info2_1: 'a',
    info1: 'a',
  ),
);

NonMessageAction A2b_A0a = NonMessageAction(
    sid: 'A0-a',
    aid: 'A2-b',
    widget: A2bPage(
      sid: 'A0-a',
      appInfo: maliciousApp1,
    ));

List<dynamic> actionList = [A0a, A0b, A0c, A1a_A0a, A1a_A0c];
