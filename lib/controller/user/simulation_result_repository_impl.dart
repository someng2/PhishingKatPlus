import 'dart:convert';

import 'package:voskat/controller/user/simulation_result_api.dart';
import 'package:voskat/controller/user/simulation_result_repository.dart';
import 'package:voskat/model/user/simulationResultDB.dart';


class SimulationResultRepositoryImpl implements SimulationResultRepository {
  SimulationResultApi api;

  SimulationResultRepositoryImpl(this.api);

  @override
  Future<List<SimulationResultDB>> getSimulationResult() async{
    final response = await api.getAllSimulationResult();

    // print('response.body: ${response.body}\n');
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => SimulationResultDB.fromJson(e)).toList();
  }

  // @override
  // Future addUser(String name, int birthYear, String gender) async {
  //   await api.insertUser(name, birthYear, gender);
  // }

}