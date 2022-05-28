// ignore_for_file: file_names
import 'package:voskat/model/simulation/pair.dart';

// temp data
List<Pair> pairList = [
  pair_1,
  pair_2,
  pair_3,
  pair_4,
  pair_5,
  pair_6,
  pair_7,
  pair_8,
  pair_9,
  pair_10,
  pair_11,
  pair_12,
  pair_13,
  pair_14,
  pair_15,
  pair_16,
  pair_17,
  pair_18,
  pair_19,
  pair_20,
  pair_21,
  pair_22,
];

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
    nextActionId: 'result');
//x
Pair pair_10 = Pair(
    sid: 'A0-a',
    pid: 'p_10',
    ac_id: 'ac_28',
    index: 2,
    currentActionId: 'U4-a',
    nextActionId: 'result');

//지인사칭
//A1-i
Pair pair_11 = Pair(
    sid: 'A0-h',
    pid: 'p_11',
    ac_id: 'ac_32',
    index: 1,
    currentActionId: 'U2-i',
    nextActionId: 'A2-e');
Pair pair_12 = Pair(
    sid: 'A0-h',
    pid: 'p_12',
    ac_id: 'ac_33',
    index: 2,
    currentActionId: 'U2-j',
    nextActionId: 'A2-f');

//A2-e
Pair pair_13 = Pair(
    sid: 'A0-h',
    pid: 'p_13',
    ac_id: 'ac_35',
    index: 1,
    currentActionId: 'U3-g',
    nextActionId: 'A3-g');
Pair pair_14 = Pair(
    sid: 'A0-h',
    pid: 'p_14',
    ac_id: 'ac_36',
    index: 2,
    currentActionId: 'U3-h',
    nextActionId: 'A3-h');

//A3-g
Pair pair_15 = Pair(
    sid: 'A0-h',
    pid: 'p_15',
    ac_id: 'ac_38',
    index: 1,
    currentActionId: 'U4-e',
    nextActionId: 'result');
Pair pair_16 = Pair(
    sid: 'A0-h',
    pid: 'p_16',
    ac_id: 'ac_39',
    index: 2,
    currentActionId: 'U4-f',
    nextActionId: 'A3-h');

//A3-h
Pair pair_17 = Pair(
    sid: 'A0-h',
    pid: 'p_17',
    ac_id: 'ac_41',
    index: 1,
    currentActionId: 'U4-g',
    nextActionId: 'A4-a');
Pair pair_18 = Pair(
    sid: 'A0-h',
    pid: 'p_18',
    ac_id: 'ac_42',
    index: 2,
    currentActionId: 'U4-h',
    nextActionId: 'A4-b');

//A4-a
Pair pair_19 = Pair(
    sid: 'A0-h',
    pid: 'p_19',
    ac_id: 'ac_44',
    index: 1,
    currentActionId: 'U5-a',
    nextActionId: 'result');
Pair pair_20 = Pair(
    sid: 'A0-h',
    pid: 'p_20',
    ac_id: 'ac_45',
    index: 2,
    currentActionId: 'U5-b',
    nextActionId: 'result');

//A4-b
Pair pair_21 = Pair(
    sid: 'A0-h',
    pid: 'p_21',
    ac_id: 'ac_47',
    index: 1,
    currentActionId: 'U5-c',
    nextActionId: 'result');
Pair pair_22 = Pair(
    sid: 'A0-h',
    pid: 'p_22',
    ac_id: 'ac_48',
    index: 2,
    currentActionId: 'U5-d',
    nextActionId: 'result');