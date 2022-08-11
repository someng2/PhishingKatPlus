import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:PhishingKatPlus/view/viewModel/notice_view_model.dart';

class NoticeDBTestScreen extends StatefulWidget {
  const NoticeDBTestScreen({Key? key}) : super(key: key);

  @override
  State<NoticeDBTestScreen> createState() => _NoticeDBTestScreenState();
}

class _NoticeDBTestScreenState extends State<NoticeDBTestScreen> {
  final _controller = TextEditingController();

  // @override
  // void dispose() {
  //   // _network.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    print(Provider.of<NoticeViewModel>(context).state.noticeDB);

    final viewModel = context.watch<NoticeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text('[noticeDB.length: ${state.noticeDB.length}]'),
      ),
      body: ListView.builder(
        itemCount: state.noticeDB.length,
        itemBuilder: (context, index) {
          final noticeDB = state.noticeDB[index];
          return Container(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'nid : ${noticeDB.nid}',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text('title: ${noticeDB.title}'),
                    Text('content: ${noticeDB.content}'),
                    Text('create_time: ${noticeDB.create_time}'),
                    Text('update_time: ${noticeDB.update_time}'),
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
    NoticeViewModel viewModel,
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
