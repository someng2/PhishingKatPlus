import 'package:voskat/controller/board_repository.dart';
import 'package:voskat/controller/pair_state.dart';
import 'package:flutter/material.dart';
import 'package:voskat/controller/scenarioType_state.dart';

class ScenarioTypeViewModel with ChangeNotifier {
  late final BoardRepository _repository;

  var _state = ScenarioTypeState();

  ScenarioTypeState get state => _state;

  ScenarioTypeViewModel(this._repository) {
    _getScenarioTypes();
  }

  Future _getScenarioTypes() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getScenarioTypes();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      scenarioTypeDB: result,
    );
    notifyListeners();
  }
}