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

// 택배사기 문자 (appContents_107 ~ 108)
AppContents appContents_107 = AppContents(
    ac_id: 'ac_107',
    sid: 'A0-c',
    aid: 'A0-c',
    order: 3,
    c_type: 'messageUrl',
    contents: 'https://bit.ly/3s5klZs',
    hasNextAction: true);

AppContents appContents_108 = AppContents(
    ac_id: 'ac_108',
    sid: 'A0-c',
    aid: 'A0-c',
    order: 2,
    c_type: 'messageText',
    contents: '[대한통운]\n송장번호 56**-33**-**80 배송지 오류\n배송지를 확인 부탁드립니다.',
    hasNextAction: false);

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

AppContents appContents_111 = AppContents(
    ac_id: 'ac_111',
    sid: 'A0-c',
    aid: 'A0-c',
    order: 0,
    c_type: 'button',
    contents: 'image/googlePlayIcon.jpg',
    hasNextAction: true);

AppContents downloadAppContents_1 = AppContents(
    ac_id: 'ac_112',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'appName',
    contents: 'CJ 대한통운 택배',
    hasNextAction: false);

AppContents downloadAppContents_2 = AppContents(
    ac_id: 'ac_112',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/cjIcon.webp',
    hasNextAction: false);

AppContents downloadAppContents_3 = AppContents(
    ac_id: 'ac_112',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'appCompany',
    contents: 'CJ Logistics',
    hasNextAction: false);

AppContents downloadAppContents_4 = AppContents(
    ac_id: 'ac_112',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'appDescription',
    contents: '\"CJ대한통운\" 앱(APP)으로 상품 배송 걱정 끝!',
    hasNextAction: false);

AppContents appContents_113 = AppContents(
    ac_id: 'ac_113',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'button',
    contents: '열기',
    hasNextAction: true);

AppContents appContents_114 = AppContents(
    ac_id: 'ac_113',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'button',
    contents: '열기',
    hasNextAction: true);

// 나가기 버튼
AppContents appContents_115 = AppContents(
    ac_id: 'ac_115',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'button',
    contents: ' ',
    hasNextAction: true);

AppContents appContents_116 = AppContents(
    ac_id: 'ac_116',
    sid: 'A0-c',
    aid: 'A2-f',
    order: 0,
    c_type: 'button',
    contents: '조회하기',
    hasNextAction: true);

AppContents appContents_117 = AppContents(
    ac_id: 'ac_117',
    sid: 'A0-c',
    aid: 'A3-d',
    order: 0,
    c_type: 'button',
    contents: '확인',
    hasNextAction: true);

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
  // appContens_107,
  appContents_108,
  appContents_107,
  maliciousAppContents_4,
  maliciousAppContents_5,
  maliciousAppContents_6,
  maliciousApp_2,
  appContents_111,
  downloadAppContents_1,
  downloadAppContents_2,
  downloadAppContents_3,
  downloadAppContents_4,
  appContents_113,
  appContents_114,
  appContents_115,
  appContents_116,
  appContents_117
];
