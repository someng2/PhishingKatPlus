import 'package:PhishingKatPlus/controller/board_repository.dart';
import 'package:PhishingKatPlus/controller/pair_state.dart';
import 'package:flutter/material.dart';

class PairViewModel with ChangeNotifier {
  late final BoardRepository _repository;

  var _state = PairState();

  PairState get state => _state;

  PairViewModel(this._repository) {
    _getPairs();
  }

  Future _getPairs() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getPairs();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      pairDB: result,
    );
    notifyListeners();
  }
}