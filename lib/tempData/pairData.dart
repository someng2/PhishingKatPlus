// ignore_for_file: file_names
import 'package:voskat/model/simulation/pair.dart';

Pair pair_1 = Pair(
    sid: 'A0-a',
    pid: 'p_1',
    ac_id: 'ac_2',
    index: 1,
    currentActionId: 'U1-a',
    nextActionId: 'A1-a');

Pair pair_2 = Pair(
    sid: 'A0-a',
    pid: 'p_2',
    ac_id: 'ac_4',
    index: 1,
    currentActionId: 'U1-c',
    nextActionId: 'A1-b');

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


// temp data
List<Pair> pairList = [
  pair_1,
  pair_2,
  pair_100,
  pair_101,
  pair_102,
  pair_103,
  pair_104,
  pair_105
];
