// ignore_for_file: file_names
import 'package:voskat/model/simulation/pair.dart';

//대출사기

Pair pair_1 = Pair(
    sid: 'A0-a',
    pid: 'p_1',
    ac_id: 'ac_2',
    index: 1,
    currentActionId: 'U1-a',
    nextActionId: 'A1-a');

//수신차단

  //수신차단 시작
Pair pair_2 = Pair(
    sid: 'A0-a',
    pid: 'p_2',
    ac_id: 'ac_4',
    index: 2,
    currentActionId: 'U1-c',
    nextActionId: 'A1-b');


  //수신차단 확인
Pair pair_3 = Pair(
    sid: 'A0-a',
    pid: 'p_3',
    ac_id: 'ac_8',
    index: 2,
    currentActionId: 'U2-c',
    nextActionId: 'A2-c');

  //수신차단 취소하기
Pair pair_4 = Pair(
    sid: 'A0-a',
    pid: 'p_4',
    ac_id: 'ac_26',
    index: 2,
    currentActionId: 'U2-d',
    nextActionId: 'A2-d');

  //인터넷 진흥원 신고하기
Pair pair_5 = Pair(
    sid: 'A0-a',
    pid: 'p_5',
    ac_id: 'ac_13',
    index: 3,
    currentActionId: 'U3-d',
    nextActionId: 'A3-b');

  //인터넷 진흥원 신고 취소하기
Pair pair_6 = Pair(
    sid: 'A0-a',
    pid: 'p_6',
    ac_id: 'ac_11',
    index: 3,
    currentActionId: 'U3-e',
    nextActionId: 'A3-c');

  // 수신 차단 취소 - 신고 확인
Pair pair_7 = Pair(
    sid: 'A0-a',
    pid: 'p_7',
    ac_id: 'ac_18',
    index: 3,
    currentActionId: 'U3-d',
    nextActionId: 'A3-b');

  // 수신차단 취소 - 신고 취소
Pair pair_8 = Pair(
    sid: 'A0-a',
    pid: 'p_8',
    ac_id: 'ac_17',
    index: 3,
    currentActionId: 'U3-e',
    nextActionId: 'A3-c');



// MessagePage (A3-c)
  //휴지통
Pair pair_9 = Pair(
    sid: 'A0-a',
    pid: 'p_9',
    ac_id: 'ac_27',
    index: 1,
    currentActionId: 'U4-a',

    nextActionId: 'result');

  //x
Pair pair_10 = Pair(
    sid: 'A0-a',
    pid: 'p_10',
    ac_id: 'ac_28',
    index: 2,
    currentActionId: 'U4-b',
    nextActionId: 'result');




Pair pair_100 = Pair(
    sid: 'A0-a',
    pid: 'p_100',
    ac_id: 'ac_101',
    index: 1,
    currentActionId: 'U2-a',
    nextActionId: 'A2-a');

Pair pair_101 = Pair(
    sid: 'A0-a',
    pid: 'p_101',
    ac_id: 'ac_103',
    index: 0,
    currentActionId: 'U3-b',
    nextActionId: 'result');

Pair pair_102 = Pair(
    sid: 'A0-a',
    pid: 'p_102',
    ac_id: 'ac_104',
    index: 0,
    currentActionId: 'U3-c',
    nextActionId: 'result');

// 백신 광고 배너 클릭 -> 백신 앱 설치
Pair pair_103 = Pair(
    sid: 'A0-a',
    pid: 'p_103',
    ac_id: 'ac_105',
    index: 0,
    currentActionId: 'U2-b',
    nextActionId: 'A2-b');

Pair pair_104 = Pair(
    sid: 'A0-a',
    pid: 'p_104',
    ac_id: 'ac_106',
    index: 0,
    currentActionId: 'U3-a',
    nextActionId: 'result');

Pair pair_105 = Pair(
    sid: 'A0-c',
    pid: 'p_105',
    ac_id: 'ac_107',
    index: 1,
    currentActionId: 'U1-b',
    // TODO: 나중에 수정
    nextActionId: 'A1-s');

// 플레이 스토어 이동
Pair pair_106 = Pair(
    sid: 'A0-c',
    pid: 'p_106',
    ac_id: 'ac_111',
    index: 0,
    currentActionId: 'U1-f',
    nextActionId: 'A2-b');

// 열기 버튼
Pair pair_107 = Pair(
    sid: 'A0-a',
    pid: 'p_107',
    ac_id: 'ac_113',
    index: 0,
    currentActionId: 'A2-b',
    nextActionId: 'A2-e');

// 플레이 스토어에서 택배앱 열기
Pair pair_108 = Pair(
    sid: 'A0-c',
    pid: 'p_107',
    ac_id: 'ac_113',
    index: 0,
    currentActionId: 'A2-b',
    nextActionId: 'A2-f');

Pair pair_109 = Pair(
    sid: 'A0-c',
    pid: 'p_109',
    ac_id: 'ac_115',
    index: 0,
    currentActionId: 'U2-e',
    nextActionId: 'A3-c');

Pair pair_110 = Pair(
    sid: 'A0-c',
    pid: 'p_110',
    ac_id: 'ac_116',
    index: 0,
    currentActionId: 'U3-f',
    nextActionId: 'A3-d');

Pair pair_111 = Pair(
    sid: 'A0-c',
    pid: 'p_111',
    ac_id: 'ac_117',
    index: 0,
    currentActionId: 'U4-c',
    nextActionId: 'A3-c');

// MessagePage (A3-c)
//휴지통
Pair pair_112 = Pair(
    sid: 'A0-c',
    pid: 'p_112',
    ac_id: 'ac_27',
    index: 1,
    currentActionId: 'U4-a',
    nextActionId: 'result');
//x
Pair pair_113 = Pair(
    sid: 'A0-c',
    pid: 'p_113',
    ac_id: 'ac_28',
    index: 2,
    currentActionId: 'U4-b',
    nextActionId: 'result');

// temp data
List<Pair> pairList = [
  pair_1,
  pair_2,
  
  pair_3, pair_4, pair_5, pair_6, pair_7, pair_8, pair_9, pair_10,
  
  pair_100,
  pair_101,
  pair_102,
  pair_103,
  pair_104,
  pair_105,
  pair_106,
  pair_107,
  pair_108,
  pair_109,
  pair_110,
  pair_111,
  pair_112,
  pair_113,
];

