// ignore_for_file: file_names

import 'package:voskat/customWidget/A2/A2a.dart';
import 'package:voskat/model/simulation/messageAction.dart';
import 'package:voskat/model/simulation/nonMessageAction.dart';
import 'package:voskat/customWidget/A1/A1a.dart';
import 'package:voskat/tempData/simulData.dart';

MessageAction A0a = MessageAction(
    aid: 'A0-a',
    contents1:
        '[Web발신]\n[정부지원 대환대출 간편대출 신청]\n고객명 : 김OO\n고유번호: L98411\n본인인증PIN:',
    url: '166-345-11111',
    contents2:
        '담당자: 김미영\n① 상단의 본인인증 PIN 클릭\n② [본인인증] 클릭하여 앱다운로드 및 설치\n③ \'간편대출\' 클릭 후 신청서 작성\n④ 담당자 확인');

MessageAction A0c = MessageAction(
    aid: 'A0-c',
    contents1: '[국외발신]\n[CJ 대한통운]\n해외배송 중 주소지 오류로\n배송 지연 중',
    url: 'https://muz.so/afYt',
    contents2: '주소지 확인요망');

NonMessageAction A1a_A0a =
    NonMessageAction(aid: 'A1-a', widget: A1aPage(subtype: '대출사기', appName: 'KB국민은행',));

// NonMessageAction A2a_A0a =
//     NonMessageAction(aid: 'A2-a', widget: A2aPage(subtype: '대출사기', appName: 'KB국민은행'));
