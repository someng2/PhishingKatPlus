import 'package:voskat/domain/model/contents.dart';
import 'package:voskat/presentation/contents_event.dart';
import 'package:voskat/presentation/contents_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentsScreen extends StatefulWidget {
  const ContentsScreen({Key? key}) : super(key: key);

  @override
  State<ContentsScreen> createState() => _ContentsScreenState();
}

class _ContentsScreenState extends State<ContentsScreen> {
  final _idController = TextEditingController();
  final _contentsController = TextEditingController();

  @override
  void dispose() {
    _contentsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // provider 이용
    final viewModel = context.watch<ContentsViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ContentsScreen'),
      ),
      body: ListView.builder(
        itemCount: state.contents.length,
        itemBuilder: (context, index) {
          final contents = state.contents[index];
          return GestureDetector(
            onTap: () async {
              _contentsController.text = contents.contents;
              bool? result = await showDialog<bool>(
                context: context,
                builder: (_) =>
                    _buildUpdateDeleteAlertDialog(viewModel, contents, context),
              );

              if (result != null) {}
            },
            child: ListTile(
              title: Text('${contents.ac_id} : ${contents.contents}'),
              subtitle: Text('${contents.mod_date}'),
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
    ContentsViewModel viewModel,
    BuildContext context,
  ) {
    _contentsController.text = '';
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(helperText: 'app contents id'),
            controller: _idController,
          ),
          TextField(
            decoration: InputDecoration(helperText: 'contents'),
            controller: _contentsController,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            viewModel.onEvent(ContentsEvent.insert2(
                _idController.text,
                '',
                '',
                0,
                'text',
                _contentsController.text,
                0,
                DateTime.now(),
                DateTime.now()));
            Navigator.pop(context, true);
          },
          child: const Text('Insert'),
        ),
      ],
    );
  }

  AlertDialog _buildUpdateDeleteAlertDialog(
    ContentsViewModel viewModel,
    Contents contents,
    BuildContext context,
  ) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _contentsController,
          ),
        ],
      ),
      // actions: [
      //   TextButton(
      //     onPressed: () {
      //       viewModel.onEvent(ContentsEvent.delete(contents.ac_id));
      //       Navigator.pop(context, true);
      //     },
      //     child: const Text('Delete'),
      //   ),
      //   TextButton(
      //     onPressed: () {
      //       viewModel.onEvent(HomeEvent.update(post.id, _controller.text));
      //       Navigator.pop(context, true);
      //     },
      //     child: const Text('Update'),
      //   ),
      // ],
    );
  }
}
