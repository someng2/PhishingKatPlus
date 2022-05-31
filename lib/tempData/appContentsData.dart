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
        '담당자: 김미영\n① 상단의 본인인증 PIN 클릭\n② [본인인증] 클릭하여 인앱다운로드\n및 설치\n③ \'간편대출\' 클릭 후 신청서 작성\n④ 담당자 확인',
    hasNextAction: false);

// 대출사기 - 수신차단
//U1-c

AppContents appContents_4 = AppContents(
    ac_id: 'ac_4',
    sid: 'A0-a',
    aid: 'A0-a',
    order: 0,
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

// 대출사기 - 악성 앱 (KB 국민은행)
AppContents maliciousApp_1 = AppContents(
    ac_id: 'ac_5',
    sid: 'A0-a',
    aid: 'A1-a',
    order: 0,
    c_type: 'appName',
    contents: 'KB국민은행 스타뱅킹',
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
    contents:
        '자세한 사항은 한국인터넷진흥원 불법 스팸대응센터 (국번 없이) 118 또는 홈페이지(https://spam.kisa.or.kr)로 문의하시기 바랍니다.',
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


//자녀사칭 1
AppContents appContents_29 = AppContents(
    ac_id: 'ac_29',
    sid: 'A0-h',
    aid: 'A0-h',
    order: 1,
    c_type: 'Ytext',
    contents: '엄마 나 휴대폰 망가져서 친구 폰으로 문자\n지금 수리비 결제하는데 15만원 보내줄 수 있어?',
    hasNextAction: true);

AppContents appContents_30 = AppContents(
    ac_id: 'ac_30',
    sid: 'A0-h',
    aid: 'A0-h',
    order: 1,
    c_type: 'Mtext',
    contents: '응 어쩌다 깨졌어~',
    hasNextAction: true);

  //A1-i
AppContents appContents_31 = AppContents(
    ac_id: 'ac_31',
    sid: 'A0-h',
    aid: 'A1-i',
    order: 1,
    c_type: 'Ytext',
    contents: '횡단보도 급하게 건너다가ㅠㅠ\n폰 수리는 방금 맡겼는데 액정보험처리 때문에 통신사 인증받아야 하는데 인증번호 확인이 안되네..\n아빠 폰으로 신청해도 돼?',
    hasNextAction: true);
AppContents appContents_32 = AppContents(
    ac_id: 'ac_32',
    sid: 'A0-h',
    aid: 'A1-i',
    order: 2,
    c_type: 'Mtext',
    contents: '어떻게 신청하는데?',
    hasNextAction: true);
AppContents appContents_33 = AppContents(
    ac_id: 'ac_33',
    sid: 'A0-h',
    aid: 'A1-i',
    order: 3,
    c_type: 'Mtext',
    contents: '응 전화로 방법 알려줘~',
    hasNextAction: false);

  //A2-e
AppContents appContents_34 = AppContents(
    ac_id: 'ac_34',
    sid: 'A0-h',
    aid: 'A2-e',
    order: 1,
    c_type: 'Ytext',
    contents: '내가 링크 하나 보내면 그거 클릭해서 앱 설치하면 돼\n설치하고 열면 귀하의 ID라고 보일거야 그 뒤에 9자리 숫자 나한테 보내주면 돼',
    hasNextAction: true);
AppContents appContents_35 = AppContents(
    ac_id: 'ac_35',
    sid: 'A0-h',
    aid: 'A2-e',
    order: 2,
    c_type: 'Mtext',
    contents: '(url을 터치한다)',
    hasNextAction: true);
AppContents appContents_36 = AppContents(
    ac_id: 'ac_36',
    sid: 'A0-h',
    aid: 'A2-e',
    order: 3,
    c_type: 'Mtext',
    contents: '알겠어~ 근데 딸! 곧 생일이지?\n받고 싶은 선물 있어?',
    hasNextAction: false);

  //A3-g
AppContents appContents_37 = AppContents(
    ac_id: 'ac_37',
    sid: 'A0-h',
    aid: 'A3-g',
    order: 2,
    c_type: 'Ytext',
    contents: '악성 앱 설치\n"설치가 완료되었습니다!"\n"인증번호 xxx-xxx-xxx"',
    hasNextAction: false);
AppContents appContents_38 = AppContents(
    ac_id: 'ac_38',
    sid: 'A0-h',
    aid: 'A3-g',
    order: 2,
    c_type: 'Mtext',
    contents: '인증번호를 전송한다',
    hasNextAction: false);
AppContents appContents_39 = AppContents(
    ac_id: 'ac_39',
    sid: 'A0-h',
    aid: 'A3-g',
    order: 2,
    c_type: 'Mtext',
    contents: '근데 딸! 곧 생일이지?\n받고 싶은 선물 있어?',
    hasNextAction: false);

  //A3-h
AppContents appContents_40 = AppContents(
    ac_id: 'ac_40',
    sid: 'A0-h',
    aid: 'A3-h',
    order: 1,
    c_type: 'Ytext',
    contents: '갑자기? ㅋㅋㅋ\n아빠 이거 급해 ㅠㅠ 얼른 보내주라',
    hasNextAction: false);
AppContents appContents_41 = AppContents(
    ac_id: 'ac_41',
    sid: 'A0-h',
    aid: 'A3-h',
    order: 2,
    c_type: 'Mtext',
    contents: '알려주면 보내줄게~',
    hasNextAction: false);
AppContents appContents_42 = AppContents(
    ac_id: 'ac_42',
    sid: 'A0-h',
    aid: 'A3-h',
    order: 3,
    c_type: 'Mtext',
    contents: '알겠어!\n(url 클릭)',
    hasNextAction: false);

  //A4-a
AppContents appContents_43 = AppContents(
    ac_id: 'ac_43',
    sid: 'A0-h',
    aid: 'A4-a',
    order: 1,
    c_type: 'Ytext',
    contents: '음.. 나 아이패드!',
    hasNextAction: false);
AppContents appContents_44 = AppContents(
    ac_id: 'ac_44',
    sid: 'A0-h',
    aid: 'A4-a',
    order: 2,
    c_type: 'Mtext',
    contents: '우리 아들 생일 지난 주였다!!',
    hasNextAction: false);
AppContents appContents_45 = AppContents(
    ac_id: 'ac_45',
    sid: 'A0-h',
    aid: 'A4-a',
    order: 3,
    c_type: 'Mtext',
    contents: '그래 이따 봐~',
    hasNextAction: false);

  //A4-b
AppContents appContents_46 = AppContents(
    ac_id: 'ac_46',
    sid: 'A0-h',
    aid: 'A4-b',
    order: 1,
    c_type: 'Ytext',
    contents: '악성 앱 설치\n"설치가 완료되었습니다!"\n"인증번호 xxx-xxx-xxx"',
    hasNextAction: false);
AppContents appContents_47 = AppContents(
    ac_id: 'ac_47',
    sid: 'A0-h',
    aid: 'A4-b',
    order: 2,
    c_type: 'Mtext',
    contents: '인증번호를 전송한다',
    hasNextAction: false);
AppContents appContents_48 = AppContents(
    ac_id: 'ac_48',
    sid: 'A0-h',
    aid: 'A4-b',
    order: 3,
    c_type: 'Mtext',
    contents: '전송하는 척 꺼버린다',
    hasNextAction: false);

  //A2-f
AppContents appContents_49 = AppContents(
    ac_id: 'ac_49',
    sid: 'A0-h',
    aid: 'A2-f',
    order: 1,
    c_type: 'Ytext',
    contents: '다액정 나가서 전화를 못받아 ㅜㅜ\n내가 문자로 방법 알려줄게',
    hasNextAction: false);
AppContents appContents_50 = AppContents(
    ac_id: 'ac_50',
    sid: 'A0-h',
    aid: 'A2-f',
    order: 2,
    c_type: 'Mtext',
    contents: '그래 알겠어~',
    hasNextAction: false);
AppContents appContents_51 = AppContents(
    ac_id: 'ac_51',
    sid: 'A0-h',
    aid: 'A2-f',
    order: 3,
    c_type: 'Mtext',
    contents: '휴대폰 빌려서 전화줘~',
    hasNextAction: false);

/////////////////// 소망

// 악성 앱 - 대출사기
AppContents appContents_6 = AppContents(
    ac_id: 'ac_6',
    aid: 'A1-a',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/kbBankIcon.png',
    hasNextAction: false,
    sid: 'A0-a');

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
    contents: '글로벌 No.1 백신!',
    hasNextAction: false);

AppContents vaccineAppContents_4 = AppContents(
    ac_id: 'ac_7',
    sid: '',
    aid: '',
    order: 0,
    c_type: 'appCompany',
    contents: 'AhnLab Inc.',
    hasNextAction: false);

AppContents vaccineAppContents_5 = AppContents(
    ac_id: 'ac_7',
    sid: '',
    aid: '',
    order: 0,
    c_type: 'appAdImage',
    contents: 'image/v3AdImage.jpeg',
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

AppContents maliciousAppContents_7 = AppContents(
    ac_id: 'ac_101',
    sid: 'A0-a',
    aid: 'A1-s',
    order: 0,
    c_type: 'appColor',
    contents: 'Color(0xffFFD117)',
    hasNextAction: false);

AppContents maliciousAppContents_8 = AppContents(
    ac_id: 'ac_101',
    sid: 'A0-a',
    aid: 'A1-s',
    order: 0,
    c_type: 'title',
    contents: '내게 맞는 대출상품',
    hasNextAction: false);

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

AppContents adAppContents_4 = AppContents(
    ac_id: 'ac_102',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appDescription',
    contents:
        '글로벌 No.1 백신! - 부스터 / 클리너 / 앱잠금 / 갤러리 숨김 / 이미지 검사 / 알림 검사 / QR코드 검사 / URL 검사 / 배터리 최적 사용',
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

AppContents downloadAppContents_5 = AppContents(
    ac_id: 'ac_112',
    sid: 'A0-c',
    aid: 'A2-b',
    order: 0,
    c_type: 'appAdImage',
    contents: 'image/cjAdImage.jpeg',
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
    aid: 'A2-b',
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

AppContents adAppContents_5 = AppContents(
    ac_id: 'ac_118',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appName',
    contents: '시티즌코난',
    hasNextAction: false);

AppContents adAppContents_6 = AppContents(
    ac_id: 'ac_118',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/시티즌코난_로고.png',
    hasNextAction: false);

AppContents adAppContents_7 = AppContents(
    ac_id: 'ac_118',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appStar',
    contents: '4.4',
    hasNextAction: false);


AppContents adAppContents_9 = AppContents(
    ac_id: 'ac_119',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appName',
    contents: '피싱아이즈',
    hasNextAction: false);

AppContents adAppContents_10 = AppContents(
    ac_id: 'ac_119',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/피싱아이즈_로고.jpeg',
    hasNextAction: false);

AppContents adAppContents_11 = AppContents(
    ac_id: 'ac_119',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appStar',
    contents: '4.2',
    hasNextAction: false);

AppContents adAppContents_8 = AppContents(
    ac_id: 'ac_120',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appName',
    contents: '후후',
    hasNextAction: false);

AppContents adAppContents_12 = AppContents(
    ac_id: 'ac_120',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appIcon',
    contents: 'image/후후_로고.webp',
    hasNextAction: false);

AppContents adAppContents_13 = AppContents(
    ac_id: 'ac_120',
    sid: 'A0-a',
    aid: 'A2-b',
    order: 0,
    c_type: 'appStar',
    contents: '4.2',
    hasNextAction: false);



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
  appContents_27,
  appContents_28,
  appContents_29,
  appContents_30,
  appContents_31,
  appContents_32,
  appContents_33,
  appContents_34,
  appContents_35,
  appContents_36,
  appContents_37,
  appContents_38,
  appContents_39,
  appContents_40,
  appContents_41,
  appContents_42,
  appContents_43,
  appContents_44,
  appContents_45,
  appContents_46,
  appContents_47,
  appContents_48,
  appContents_49,
  appContents_50,
  appContents_51,
  
  maliciousApp_1,
  appContents_6,
  vaccineAppContents_1, vaccineAppContents_2, vaccineAppContents_3, vaccineAppContents_4,vaccineAppContents_5,
  maliciousAppContents_1,
  maliciousAppContents_2,
  maliciousAppContents_3,
  maliciousAppContents_7,
  maliciousAppContents_8,
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
  downloadAppContents_5,
  appContents_113,
  appContents_114,
  appContents_115,
  appContents_116,
  appContents_117,
  adAppContents_5, adAppContents_6,adAppContents_7,
  adAppContents_9,adAppContents_10,adAppContents_11,
  adAppContents_8, adAppContents_12, adAppContents_13,
];

