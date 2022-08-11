import 'package:PhishingKatPlus/controller/board_repository.dart';
import 'package:PhishingKatPlus/controller/pair_state.dart';
import 'package:flutter/material.dart';
import 'package:PhishingKatPlus/controller/scenario_state.dart';

class ScenarioViewModel with ChangeNotifier {
  late final BoardRepository _repository;

  var _state = ScenarioState();

  ScenarioState get state => _state;

  ScenarioViewModel(this._repository) {
    _getScenarios();
  }

  Future _getScenarios() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getScenarios();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      scenarioDB: result,
    );
    notifyListeners();
  }
}