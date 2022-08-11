import 'package:PhishingKatPlus/controller/board_repository.dart';
import 'package:PhishingKatPlus/controller/catType_state.dart';
import 'package:PhishingKatPlus/controller/pair_state.dart';
import 'package:flutter/material.dart';

class CatTypeViewModel with ChangeNotifier {
  late final BoardRepository _repository;

  var _state = CatTypeState();

  CatTypeState get state => _state;

  CatTypeViewModel(this._repository) {
    _getCatType();
  }

  Future _getCatType() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getCatType();
    // ..sort((a, b) => -a.acid.compareTo(b.acid));

    _state = state.copyWith(
      isLoading: false,
      catTypeDB: result,
    );
    notifyListeners();
  }
}