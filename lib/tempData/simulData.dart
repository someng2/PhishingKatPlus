// ignore_for_file: file_names
import 'package:voskat/model/simulation/simulation.dart';
import 'package:voskat/tempData/acitonData.dart';

Simulation scenario_A0a = Simulation(
    sid: 'A0-a',
    medium: '문자',
    phoneNumber: '1600-xxxx',
    type: '기관사칭',
    subtype: '대출사기',
    actionSequence: [A0a, A1a_A0a],
    score: 0);

Simulation scenario_A0c = Simulation(
    sid: 'A0-c',
    medium: '문자',
    phoneNumber: '070-',
    type: '기관사칭',
    subtype: '택배사칭',
    actionSequence: [A0c],
    score: 0);

List<Simulation> scenarioList = [scenario_A0a, scenario_A0c];
