// ignore_for_file: file_names
import 'package:voskat/model/simulation/pair.dart';

// temp data
List<Pair> pairList = [pair_1, pair_2, pair_3, pair_4, pair_5, pair_6, pair_7, pair_8, pair_9, pair_10];

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


//A3-c
  //휴지통
Pair pair_9 = Pair(
    sid: 'A0-a',
    pid: 'p_9',
    ac_id: 'ac_27',
    index: 1,
    currentActionId: 'U4-a',
    nextActionId: 'Result');
  //x
Pair pair_10 = Pair(
    sid: 'A0-a',
    pid: 'p_10',
    ac_id: 'ac_28',
    index: 2,
    currentActionId: 'U4-a',
    nextActionId: 'Result');



