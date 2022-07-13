import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/user/UserController.dart';
import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/controller/user/user_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voskat/view/viewModel/user_view_model.dart';
import 'package:voskat/model/globals.dart' as globals;

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
    // globals.userDB = state.userDB;

    return Scaffold(
      appBar: AppBar(
        title: Text('[state.userDB.length: ${state.userDB.length}]'),
      ),
      body: ListView.builder(
        itemCount: state.userDB.length,
        itemBuilder: (context, index) {
          final userDB = state.userDB[index];
          return Container(
            height: 100.h,
            child: ListTile(
              title: Text(
                  '${userDB.uid} : ${UserController().getUserName(state.userDB, userDB.uid)}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('birthYear: ${userDB.birthYear}'),
                  Text('gender: ${userDB.gender}'),
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('휴대번호: ${userDB.phone_number}'),
                  Text('토큰: ${userDB.token}'),
                  Text('관심 키워드: ${userDB.interest_keyword}'),
                ],
              ),
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
            print('before : ${_controller.text}');
            _controller.text = _controller.text.replaceAllMapped(
                RegExp(r'(\d{3})(\d{3,4})(\d{4})'),
                (m) => '${m[1]}-${m[2]}-${m[3]}');
            print('after : ${_controller.text}');
            viewModel.onEvent(UserEvent.insertUser(_controller.text,
                'token3', 'new', 1996, 'female', 'famliy'));
            Navigator.pop(context, true);
          },
          child: const Text('Insert'),
        ),
      ],
    );
  }
}
