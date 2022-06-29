import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:voskat/controller/UserController.dart';
import 'package:voskat/view/user_state.dart';
import 'package:voskat/view/user_view_model.dart';

import '../controller/user_reposiroty.dart';
import '../model/user/userDB.dart';

class UserDBTestPage extends StatefulWidget with ChangeNotifier {
  UserDBTestPage({Key? key}) : super(key: key);

  @override
  State<UserDBTestPage> createState() => _UserDBTestPageState();
}

class _UserDBTestPageState extends State<UserDBTestPage> with ChangeNotifier {
  // late UserRepository _userRepository;
  // late Future<List<UserDB>> userDB;

  var _state = UserState();
  UserState get state => _state;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<user_view_model>();
    final state = viewModel.state;

    List<UserDB> userDBList = state.userDB;
    print('userDBList: $userDBList');

    String name = UserController().getUserName(userDBList, 6);

    return Scaffold(
      appBar: AppBar(
          // title:Text('UserDBTest [state.userDb.length: ${state.userDB.length}]'),
          ),
      body: Column(
        children: [
          Container(child: Text('name: ${name}')),
          Container(
            height: 550.h,
            child: ListView.builder(
              itemCount: userDBList.length,
              itemBuilder: (context, index) {
                final userDB = userDBList[index];
                return ListTile(
                  title: Text(
                      '${userDB.uid} : ${UserController().getUserName(userDBList, userDB.uid)}'),
                  subtitle: Text('birthYear: ${userDB.birthYear}'),
                  trailing: Text('gender: ${userDB.gender}'),
                );
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     showDialog(
      //         context: context,
      //         builder: (_) => _buildInsertAlertDialog(viewModel, context));
      //   },
      // ),
    );
  }

  // Future<String> convertType(Future<dynamic> before) async {
  //   print('before: $before');
  //   String after = await before;
  //   print('after: $after');
  //   return after;
  // }
}
