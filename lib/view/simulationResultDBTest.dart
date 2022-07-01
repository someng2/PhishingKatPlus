import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:voskat/view/viewModel/simulation_result_view_model.dart';
import 'package:voskat/view/viewModel/user_view_model.dart';

import '../controller/user/simulation_result_api.dart';
import '../controller/user/simulation_result_repository_impl.dart';
import '../controller/user/user_api.dart';
import '../controller/user/user_repository_impl.dart';

class SimulationResultDBTestScreen extends StatefulWidget {
  const SimulationResultDBTestScreen({Key? key}) : super(key: key);

  @override
  State<SimulationResultDBTestScreen> createState() =>
      _SimulationResultDBTestScreenState();
}

class _SimulationResultDBTestScreenState
    extends State<SimulationResultDBTestScreen> {
  final _controller = TextEditingController();

  // @override
  // void dispose() {
  //   // _network.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    print(Provider.of<SimulationResultViewModel>(context)
        .state
        .simulationResultDB);

    final viewModel = context.watch<SimulationResultViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(
            '[simulationResult.length: ${state.simulationResultDB.length}]'),
      ),
      body: ListView.builder(
        itemCount: state.simulationResultDB.length,
        itemBuilder: (context, index) {
          final simulationResultDB = state.simulationResultDB[index];
          return Container(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'uid : ${simulationResultDB.uid}',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text('sid: ${simulationResultDB.sid}'),
                    Text(
                        'simulation_type: ${simulationResultDB.simulation_type}'),
                    Text(
                        'worst_ua_keyword1: ${simulationResultDB.worst_ua_keyword1}'),
                    Text(
                        'worst_ua_keyword2: ${simulationResultDB.worst_ua_keyword2}'),
                    Text('create_time: ${simulationResultDB.create_time}'),
                    Text('update_time: ${simulationResultDB.update_time}'),
                  ]));

          // );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // showDialog(
          //     context: context,
          //     builder: (_) => _buildInsertAlertDialog(viewModel, context));
        },
      ),
    );
  }

  AlertDialog _buildInsertAlertDialog(
    SimulationResultViewModel viewModel,
    BuildContext context,
  ) {
    _controller.text = '';
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            print(_controller.text);
            // viewModel.onEvent(SimulationResultEvent.insertUser(_controller.text, 1990, 'female'));
            Navigator.pop(context, true);
          },
          child: const Text('Insert'),
        ),
      ],
    );
  }
}
