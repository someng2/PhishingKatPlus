import 'package:flutter/material.dart';

class Simulation {
  String medium; // 스미싱 수단
  String type; // 스미싱 유형
  String subtype; // 스미싱 세부 유형
  List<String> actionSequence;

  Simulation(
      {required this.medium,
      required this.type,
      required this.subtype,
      required this.actionSequence});
}
