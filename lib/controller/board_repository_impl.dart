import 'dart:convert';

import 'package:voskat/controller/board_api.dart';
import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/controller/board_repository.dart';
import 'package:voskat/model/simulation/appPageDB.dart';
import 'package:voskat/model/simulation/pairDB.dart';
import 'package:voskat/model/simulation/resultCatTypeDB.dart';
import 'package:voskat/model/simulation/scenarioDB.dart';
import 'package:voskat/model/simulation/scenarioTypeDB.dart';
import 'package:voskat/model/user/userDB.dart';

class BoardRepositoryImpl implements BoardRepository {
  BoardApi api;
  BoardRepositoryImpl(this.api);

  @override
  Future add(String ac_id, String sid, String aid, int order, String c_type, String contents, bool hasNextAction) async{
    await api.insert(ac_id, sid, aid, order, c_type, contents, hasNextAction);
  }



  @override
  Future<List<AppContentsDB>> getContents() async{
    final response = await api.getAllList('appContents');
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => AppContentsDB.fromJson(e)).toList();
  }

  @override
  Future<List<AppPageDB>> getPages() async{
    final response = await api.getAllList('appPage');
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => AppPageDB.fromJson(e)).toList();
  }

  @override
  Future<List<PairDB>> getPairs() async{
    final response = await api.getAllList('pair');
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => PairDB.fromJson(e)).toList();
  }

  @override
  Future<List<ResultCatTypeDB>> getResults() async{
    final response = await api.getAllList('ResultCatType');
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => ResultCatTypeDB.fromJson(e)).toList();
  }

  @override
  Future<List<ScenarioDB>> getScenarios() async{
    final response = await api.getAllList('Scenario');
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => ScenarioDB.fromJson(e)).toList();
  }

  @override
  Future<List<ScenarioTypeDB>> getScenarioTypes() async{
    final response = await api.getAllList('ScenarioType');
    final Iterable json = jsonDecode(response.body);
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