// ignore_for_file: file_names

import 'package:voskat/model/simulation/appContents.dart';

List<AppContents> appContentsList = [
  appContents_1,
  appContents_2,
  appContents_3,
  appContents_4,
  // appContents_5,
  // appContents_6,
  // appContents_7,
  appContents_8,
  appContents_9,
  appContents_10,
  appContents_11,
  appContents_13,
  appContents_14,
  appContents_15,
  appContents_16,
  appContents_17,
  appContents_18,
  appContents_19,
  appContents_20,
  appContents_21,
  appContents_22,
  appContents_23,
  appContents_24,
  appContents_25,
  appContents_26,
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
  //U1-c
AppContents appContents_4 = AppContents(
    ac_id: 'ac_4',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 1,
    c_type: 'button',
    contents: '수신 차단',
    hasNextAction: true);

AppContents appContents_8 = AppContents(
    ac_id: 'ac_8',
    sid: 'A0-a',
    aid: 'A1-b',
    order: 4,
    c_type: 'accept',
    contents: '수신차단',
    hasNextAction: false);

  //A2-c 수신차단 후 신고
AppContents appContents_9 = AppContents(
    ac_id: 'ac_9',
    sid: 'A0-a',
    aid: 'A2-c',
    order: 1,
    c_type: 'description',
    contents: '이 번호의 전화 및 메시지를 더이상 받지 않습니다.',
    hasNextAction: true);

AppContents appContents_10 = AppContents(
    ac_id: 'ac_10',
    sid: 'A0-a',
    aid: 'A2-c',
    order: 2,
    c_type: 'description',
    contents: '이 번호를 한국인터넷 진흥원(118)에\n신고하시겠습니까?',
    hasNextAction: true);

AppContents appContents_11 = AppContents(
    ac_id: 'ac_11',
    sid: 'A0-a',
    aid: 'A2-c',
    order: 3,
    c_type: 'cancel',
    contents: '취소',
    hasNextAction: true);

AppContents appContents_13 = AppContents(
    ac_id: 'ac_13',
    sid: 'A0-a',
    aid: 'A2-c',
    order: 4,
    c_type: 'accept',
    contents: '수신차단',
    hasNextAction: true);

AppContents appContents_14 = AppContents(
    ac_id: 'ac_14',
    sid: 'A0-a',
    aid: 'A2-c',
    order: 5,
    c_type: 'decoration',
    contents: '한국인터넷 진흥원(118)',
    hasNextAction: false);

  //A2-d 수신차단 x 신고
AppContents appContents_15 = AppContents(
    ac_id: 'ac_15',
    sid: 'A0-a',
    aid: 'A2-d',
    order: 1,
    c_type: 'title',
    contents: '신고하기',
    hasNextAction: true);
AppContents appContents_16 = AppContents(
    ac_id: 'ac_16',
    sid: 'A0-a',
    aid: 'A2-d',
    order: 2,
    c_type: 'description',
    contents: '이 번호를 한국인터넷 진흥원(118)에 신고하시겠습니까?',
    hasNextAction: true);
AppContents appContents_17 = AppContents(
    ac_id: 'ac_17',
    sid: 'A0-a',
    aid: 'A2-d',
    order: 3,
    c_type: 'cancel',
    contents: '취소',
    hasNextAction: true);
AppContents appContents_18 = AppContents(
    ac_id: 'ac_18',
    sid: 'A0-a',
    aid: 'A2-d',
    order: 4,
    c_type: 'accept',
    contents: '신고하기',
    hasNextAction: true);
AppContents appContents_19 = AppContents(
    ac_id: 'ac_19',
    sid: 'A0-a',
    aid: 'A2-d',
    order: 5,
    c_type: 'image',
    contents: 'image/kisaLogo.png',
    hasNextAction: false);

  //A3-b 통화 화면, 신고접수
AppContents appContents_20 = AppContents(
    ac_id: 'ac_20',
    sid: 'A0-a',
    aid: 'A3-b',
    order: 1,
    c_type: 'text',
    contents: '118',
    hasNextAction: true);
AppContents appContents_21 = AppContents(
    ac_id: 'ac_21',
    sid: 'A0-a',
    aid: 'A3-b',
    order: 2,
    c_type: 'image',
    contents: 'image/kisaLogo.png',
    hasNextAction: true);
AppContents appContents_22 = AppContents(
    ac_id: 'ac_22',
    sid: 'A0-a',
    aid: 'A3-b',
    order: 3,
    c_type: 'text',
    contents: '자세한 사항은 한국인터넷진흥원 불법 스팸대응센터 (국번 없이) 118 또는 홈페이지(https://spam.kisa.or.kr)로 문의하시기 바랍니다.',
    hasNextAction: true);
AppContents appContents_23 = AppContents(
    ac_id: 'ac_23',
    sid: 'A0-a',
    aid: 'A3-b',
    order: 4,
    c_type: 'button',
    contents: '확인',
    hasNextAction: false);

//A1-b
AppContents appContents_24 = AppContents(
    ac_id: 'ac_24',
    sid: 'A0-a',
    aid: 'A1-b',
    order: 1,
    c_type: 'title',
    contents: '수신 차단',
    hasNextAction: true);

AppContents appContents_25 = AppContents(
    ac_id: 'ac_25',
    sid: 'A0-a',
    aid: 'A1-b',
    order: 2,
    c_type: 'description',
    contents: '이 번호의 전화 및 메시지를 더이상 받지 않습니다.',
    hasNextAction: true);

AppContents appContents_26 = AppContents(
    ac_id: 'ac_26',
    sid: 'A0-a',
    aid: 'A1-b',
    order: 3,
    c_type: 'cancel',
    contents: '취소',
    hasNextAction: true);

//Ac3
  //휴지통
AppContents appContents_27 = AppContents(
    ac_id: 'ac_27',
    sid: 'A0-a',
    aid: 'A3-c',
    order: 1,
    c_type: 'image',
    contents: 'image/trashbinIcon.png',
    hasNextAction: false);

  //나가기
AppContents appContents_28 = AppContents(
    ac_id: 'ac_28',
    sid: 'A0-a',
    aid: 'A3-c',
    order: 2,
    c_type: 'icon',
    contents: '',
    hasNextAction: false);



