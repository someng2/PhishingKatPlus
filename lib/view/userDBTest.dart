import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/controller/user/user_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/view/viewModel/user_view_model.dart';

class UserDBTestScreen extends StatefulWidget {
  const UserDBTestScreen({Key? key}) : super(key: key);

  @override
  State<UserDBTestScreen> createState() => _UserDBTestScreenState();
}

class _UserDBTestScreenState extends State<UserDBTestScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<UserViewModel>();

    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text('[state.userDB.length: ${state.userDB.length}]'),
      ),
      body: ListView.builder(
        itemCount: state.userDB.length,
        itemBuilder: (context, index) {
          final userDB = state.userDB[index];
          return ListTile(
            title: Text('${userDB.uid} : ${userDB.name}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('birthYear: ${userDB.birthYear}'),
                Text('gender: ${userDB.gender}'),
              ],
            ),
            trailing: Column(
              children: [
                Text('관심 키워드: ${userDB.interest_keyword}'),
              ],
            ),
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
    UserViewModel viewModel,
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
            viewModel.onEvent(
                UserEvent.insertUser(_controller.text, 1990, 'female', 'loan'));
            Navigator.pop(context, true);
          },
          child: const Text('Insert'),
        ),
      ],
    );
  }
}
