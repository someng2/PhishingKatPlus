import 'package:provider/provider.dart';
import 'package:PhishingKatPlus/controller/user/simulation_result_repository.dart';
import 'package:PhishingKatPlus/controller/user/simulation_result_state.dart';
import 'package:flutter/material.dart';
import 'package:PhishingKatPlus/controller/user/simulation_result_event.dart';

class SimulationResultViewModel with ChangeNotifier {
  final SimulationResultRepository _simulationResultRepository;

  var _state = SimulationResultState();

  SimulationResultState get state => _state;

  SimulationResultViewModel(this._simulationResultRepository) {
    _getSimulationResult();
  }

  void onEvent(SimulationResultEvent event) {
    // freezed의 패턴 매칭 사용
    event.when(
      getAllSimulationResult: _getSimulationResult,
      // insertUser: _insertUser,
      // update: _update,
      // delete: _delete,
    );
  }

  Future _getSimulationResult() async {
    // print('_getSimulationResult()');

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _simulationResultRepository.getSimulationResult();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    print('_simulationResultRepository.getSimulationResult()');
    print('result: $result\n');

    _state = state.copyWith(
      isLoading: false,
      simulationResultDB: result,
    );
    notifyListeners();
  }

  // Future _insertUser(String name, int birthYear, String gender) async {
  //   await _userRepository.addUser(name, birthYear, gender);
  //   await _getSimulationResult();
  // }

}
