import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/model/simulation/appPageDB.dart';
import 'package:voskat/model/simulation/pairDB.dart';
import 'package:voskat/model/simulation/resultCatTypeDB.dart';
import 'package:voskat/model/simulation/scenarioDB.dart';
import 'package:voskat/model/simulation/scenarioTypeDB.dart';
import 'package:voskat/model/user/userDB.dart';

abstract class BoardRepository {
  Future<List<UserDB>> getUser();
  Future<List<AppContentsDB>> getAppContents();
  Future<List<AppPageDB>> getPages();
  Future<List<PairDB>> getPairs();
  Future<List<ResultCatTypeDB>> getResults();
  Future<List<ScenarioDB>> getScenarios();
  Future<List<ScenarioTypeDB>> getScenarioTypes();


  Future add(String ac_id, String sid, String aid, int order,
      String c_type, String contents, bool hasNextAction);
  //
  // Future update(int id, String content);
  //
  // Future remove(int id);
}