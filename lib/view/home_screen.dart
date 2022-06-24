import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/view//home_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/view/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView.builder(
        itemCount: state.userDB.length,
        itemBuilder: (context, index) {
          final userDB = state.userDB[index];
          return ListTile(
            title: Text('${userDB.uid} : ${userDB.name}'),
            subtitle: Text('${userDB.age}'),
          );
        },
      ),
    );
  }
}
