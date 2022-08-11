import 'package:PhishingKatPlus/model/simulation/appContentsDB.dart';
import 'package:PhishingKatPlus/model/simulation/appPageDB.dart';
import 'package:PhishingKatPlus/model/simulation/pairDB.dart';
import 'package:PhishingKatPlus/model/simulation/resultCatTypeDB.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioDB.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioTypeDB.dart';
import 'package:PhishingKatPlus/model/user/userDB.dart';

abstract class BoardRepository {
  Future<List<UserDB>> getUser();
  Future<List<AppContentsDB>> getAppContents();
  Future<List<AppPageDB>> getPages();
  Future<List<PairDB>> getPairs();
  Future<List<ResultCatTypeDB>> getCatType();
  Future<List<ScenarioDB>> getScenarios();
  Future<List<ScenarioTypeDB>> getScenarioTypes();


  Future add(String ac_id, String sid, String aid, int order,
      String c_type, String contents, bool hasNextAction);
  //
  // Future update(int id, String content);
  //
  // Future remove(int id);
}