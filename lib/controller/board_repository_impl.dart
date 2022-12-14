import 'dart:convert';

import 'package:PhishingKatPlus/controller/board_api.dart';
import 'package:PhishingKatPlus/model/simulation/appContentsDB.dart';
import 'package:PhishingKatPlus/controller/board_repository.dart';
import 'package:PhishingKatPlus/model/simulation/appPageDB.dart';
import 'package:PhishingKatPlus/model/simulation/pairDB.dart';
import 'package:PhishingKatPlus/model/simulation/resultCatTypeDB.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioDB.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioTypeDB.dart';
import 'package:PhishingKatPlus/model/user/userDB.dart';

class BoardRepositoryImpl implements BoardRepository {
  BoardApi api;
  BoardRepositoryImpl(this.api);

  @override
  Future add(String ac_id, String sid, String aid, int order, String c_type, String contents, bool hasNextAction) async{
    await api.insert(ac_id, sid, aid, order, c_type, contents, hasNextAction);
  }

  @override
  Future<List<UserDB>> getUser() async{
    final response = await api.getAllList('User');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => UserDB.fromJson(e)).toList();
  }

  @override
  Future<List<AppContentsDB>> getAppContents() async{
    final response = await api.getAllList('appContents');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => AppContentsDB.fromJson(e)).toList();
  }

  @override
  Future<List<AppPageDB>> getPages() async{
    final response = await api.getAllList('appPage');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => AppPageDB.fromJson(e)).toList();
  }

  @override
  Future<List<PairDB>> getPairs() async{
    final response = await api.getAllList('pair');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => PairDB.fromJson(e)).toList();
  }

  @override
  Future<List<ResultCatTypeDB>> getCatType() async{
    final response = await api.getAllList('ResultCatType');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => ResultCatTypeDB.fromJson(e)).toList();
  }

  @override
  Future<List<ScenarioDB>> getScenarios() async{
    final response = await api.getAllList('Scenario');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => ScenarioDB.fromJson(e)).toList();
  }

  @override
  Future<List<ScenarioTypeDB>> getScenarioTypes() async{
    final response = await api.getAllList('ScenarioType');
    final Iterable json = jsonDecode(utf8.decode(response.bodyBytes));
    return json.map((e) => ScenarioTypeDB.fromJson(e)).toList();
  }

//
  // @override
  // Future remove(int id) async{
  //   // TODO: implement remove
  //   throw UnimplementedError();
  // }
  //
  // @override
  // Future update(int id, String content) {
  //   // TODO: implement update
  //   throw UnimplementedError();
  // }
}