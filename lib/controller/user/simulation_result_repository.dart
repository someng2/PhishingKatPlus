import 'package:voskat/model/user/simulationResultDB.dart';

abstract class SimulationResultRepository{

  Future<List<SimulationResultDB>> getSimulationResult();
  // Future addUser(String name, int birthYear, String gender, );

}