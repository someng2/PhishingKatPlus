import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/view/user_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/view/user_view_model.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<user_view_model>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title:Text('Home Screen [state.userDb.length: ${state.userDB.length}]'),
      ),
      body: ListView.builder(
        itemCount: state.userDB.length,
        itemBuilder: (context, index) {
          final userDB = state.userDB[index];
          return ListTile(
            title: Text('${userDB.uid} : ${userDB.name}'),
            subtitle: Text('birthYear: ${userDB.birthYear}'),
            trailing: Text('gender: ${userDB.gender}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => _buildInsertAlertDialog(viewModel, context));
        },
      ),
    );
  }

  AlertDialog _buildInsertAlertDialog(
      user_view_model viewModel,
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
            viewModel.onEvent(UserEvent.insertUser(_controller.text, 1990, 'female'));
            Navigator.pop(context, true);
          },
          child: const Text('Insert'),
        ),
      ],
    );
  }
}
