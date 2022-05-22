// ignore_for_file: file_names

import 'package:voskat/model/simulation/appContents.dart';

/// order: 0 -> 순서 상관없는 컨텐츠

// 대출사기 - 문자 내용 (appContents_1 ~ 3)
AppContents appContents_1 = AppContents(
  ac_id: 'ac_1',
  sid: 'A0-a',
  aid: 'A0-a',
  order: 1,
  c_type: 'messageText',
  contents: '[Web발신]\n[정부지원 대환대출 간편대출 신청]\n고객명 : 김OO\n고유번호: L98411\n본인인증PIN:',
  hasNextAction: false,
);

AppContents appContents_2 = AppContents(
    ac_id: 'ac_2',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 2,
    c_type: 'messageUrl',
    contents: '166-345-11111',
    hasNextAction: true);

AppContents appContents_3 = AppContents(
    ac_id: 'ac_3',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 3,
    c_type: 'messageText',
    contents:
        '담당자: 김미영\n① 상단의 본인인증 PIN 클릭\n② [본인인증] 클릭하여 앱다운로드 및 설치\n③ \'간편대출\' 클릭 후 신청서 작성\n④ 담당자 확인',
    hasNextAction: false);

// 대출사기 - 수신차단
AppContents appContents_4 = AppContents(
    ac_id: 'ac_4',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 0,
    c_type: 'button',
    contents: '수신 차단',
    hasNextAction: true);

// 대출사기 - 악성 앱 (KB 국민은행)
AppContents maliciousApp_1 = AppContents(
    ac_id: 'ac_5',
    sid: 'A0-a',
    aid: 'A1-a',
    order: 0,
    c_type: 'appName',
    contents: 'KB 국민은행',
    hasNextAction: false);

AppContents appContents_6 = AppContents(
    ac_id: 'ac_6',
    sid: 'A0-a',
    aid: 'A1-a',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/cautionIcon.png',
    hasNextAction: false);

// 백신 앱
AppContents vaccineAppContents_1 = AppContents(
    ac_id: 'ac_7',
    sid: '',
    aid: '',
    order: 0,
    c_type: 'appName',
    contents: 'V3 Mobile-Security',
    hasNextAction: false);

AppContents vaccineAppContents_2 = AppContents(
    ac_id: 'ac_7',
    sid: '',
    aid: '',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/v3appLogo.webp',
    hasNextAction: false);

AppContents vaccineAppContents_3 = AppContents(
    ac_id: 'ac_7',
    sid: '',
    aid: '',
    order: 0,
    c_type: 'appDescription',
    contents: '글로벌 안드로이드 백신 No.1',
    hasNextAction: false);

AppContents vaccineAppContents_4 = AppContents(
    ac_id: 'ac_7',
    sid: '',
    aid: '',
    order: 0,
    c_type: 'appCompany',
    contents: 'AhnLab Inc.',
    hasNextAction: false);

AppContents adAppContents_4 = AppContents(
    ac_id: 'ac_102',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appDescription',
    contents:
        '글로벌 No.1 백신! - 부스터 / 클리너 / 앱잠금 / 갤러리 숨김 / 이미지 검사 / 알림 검사 / QR코드 검사 / URL 검사 / 배터리 최적 사용',
    hasNextAction: false);

// 악성 앱 - 고객 정보 입력
AppContents maliciousAppContents_1 = AppContents(
    ac_id: 'ac_100',
    sid: 'A0-a',
    aid: 'A1-s',
    order: 1,
    c_type: 'textfield_1_name',
    contents: '고객명',
    hasNextAction: false);

AppContents maliciousAppContents_2 = AppContents(
    ac_id: 'ac_100',
    sid: 'A0-a',
    aid: 'A1-s',
    order: 2,
    c_type: 'textfield_2',
    contents: '주민등록번호',
    hasNextAction: false);

AppContents maliciousAppContents_3 = AppContents(
    ac_id: 'ac_101',
    sid: 'A0-a',
    aid: 'A1-s',
    order: 0,
    c_type: 'button',
    contents: '조회하기',
    hasNextAction: true);

AppContents adAppContents_1 = AppContents(
    ac_id: 'ac_102',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appName',
    contents: '피싱캣',
    hasNextAction: false);

AppContents adAppContents_2 = AppContents(
    ac_id: 'ac_102',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/phishingkatLogo.png',
    hasNextAction: false);

AppContents adAppContents_3 = AppContents(
    ac_id: 'ac_102',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appStar',
    contents: '5.0',
    hasNextAction: false);

// 백신 앱 - 악성 앱 삭제
AppContents appContents_103 = AppContents(
    ac_id: 'ac_103',
    sid: 'A0-a',
    aid: 'A2-e',
    order: 0,
    c_type: 'button',
    contents: '삭제',
    hasNextAction: true);

// 백신 앱 - 악성 앱 삭제 취소
AppContents appContents_104 = AppContents(
    ac_id: 'ac_104',
    sid: 'A0-a',
    aid: 'A2-e',
    order: 0,
    c_type: 'button',
    contents: '취소',
    hasNextAction: true);

AppContents vaccineAppBanner_1 = AppContents(
    ac_id: 'ac_105',
    sid: 'A0-a',
    aid: 'A2-a',
    order: 0,
    c_type: 'button',
    contents: '',
    hasNextAction: true);

AppContents vaccineAppBanner_2 = AppContents(
    ac_id: 'ac_105',
    sid: 'A0-a',
    aid: 'A1-s',
    order: 0,
    c_type: 'button',
    contents: '',
    hasNextAction: true);

// 정보 조회 화면 -> 나가기
AppContents appContents_106 = AppContents(
    ac_id: 'ac_106',
    sid: 'A0-a',
    aid: 'A2-a',
    order: 0,
    c_type: 'button',
    contents: '',
    hasNextAction: true);

// 택배사기 문자 (appContents_10 ~ 12)
AppContents appContens_107 = AppContents(
    ac_id: 'ac_107',
    sid: 'A0-c',
    aid: 'A0-c',
    order: 1,
    c_type: 'messageUrl',
    contents: '택배사칭 url 1',
    hasNextAction: true);

AppContents appContents_108 = AppContents(
    ac_id: 'ac_108',
    sid: 'A0-c',
    aid: 'A0-c',
    order: 2,
    c_type: 'messageText',
    contents: '택배사칭 문자ㅏㅏㅏㅏㅏㅏㅏㅏㅏ',
    hasNextAction: false);

AppContents appContents_109 = AppContents(
    ac_id: 'ac_109',
    sid: 'A0-c',
    aid: 'A0-c',
    order: 3,
    c_type: 'messageUrl',
    contents: '택배사칭 url 2',
    hasNextAction: true);

AppContents maliciousAppContents_4 = AppContents(
    ac_id: 'ac_100',
    sid: 'A0-c',
    aid: 'A1-s',
    order: 1,
    c_type: 'textfield_1_name',
    contents: '고객명',
    hasNextAction: false);

AppContents maliciousAppContents_5 = AppContents(
    ac_id: 'ac_100',
    sid: 'A0-c',
    aid: 'A1-s',
    order: 2,
    c_type: 'textfield_3',
    contents: '휴대폰 번호',
    hasNextAction: false);

AppContents maliciousAppContents_6 = AppContents(
    ac_id: 'ac_100',
    sid: 'A0-c',
    aid: 'A1-s',
    order: 3,
    c_type: 'textfield_1',
    contents: '운송장 번호',
    hasNextAction: false);

AppContents maliciousApp_2 = AppContents(
    ac_id: 'ac_110',
    sid: 'A0-c',
    aid: 'A1-s',
    order: 0,
    c_type: 'appName',
    contents: 'cj 대한통운',
    hasNextAction: false);

List<AppContents> appContentsList = [
  appContents_1,
  appContents_2,
  appContents_3,
  appContents_4,
  maliciousApp_1,
  appContents_6,
  vaccineAppContents_1,
  vaccineAppContents_2,
  vaccineAppContents_3,
  vaccineAppContents_4,
  maliciousAppContents_1,
  maliciousAppContents_2,
  maliciousAppContents_3,
  adAppContents_1,
  adAppContents_2,
  adAppContents_3,
  adAppContents_4,
  appContents_103,
  appContents_104,
  vaccineAppBanner_1,
  vaccineAppBanner_2,
  appContents_106,
  appContens_107,
  appContents_108,
  appContents_109,
  maliciousAppContents_4,
  maliciousAppContents_5,
  maliciousAppContents_6,
  maliciousApp_2,
];
