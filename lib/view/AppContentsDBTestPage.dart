// import 'package:voskat/model/simulation/appContentsDB.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../presentation/contents_event.dart';
// import '../presentation/contents_view_model.dart';
//
// class AppContentsDBTestPage extends StatefulWidget {
//
//   const AppContentsDBTestPage({Key? key}) : super(key: key);
//
//   @override
//   State<AppContentsDBTestPage> createState() => _AppContentsDBTestPageState();
// }
//
// class _AppContentsDBTestPageState extends State<AppContentsDBTestPage> {
//   final _controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final viewModel = context.watch<ContentsViewModel>();
//
//     final state = viewModel.state;
//
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('[state.contents.length: ${state.contents.length}]'),
//       ),
//       body: ListView.builder(
//         itemCount: state.contents.length,
//         itemBuilder: (context, index) {
//           final contentsDB = state.contents[index];
//           return ListTile(
//             title: Text('contentsDB.ac_id : ${contentsDB.ac_id}'),
//             subtitle: Text('c_type: ${contentsDB.c_type}'),
//             trailing: Text('contents: ${contentsDB.contents}'),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (_) => _buildInsertAlertDialog(viewModel, context));
//         },
//       ),
//     );
//   }
//
//   AlertDialog _buildInsertAlertDialog(
//       ContentsViewModel viewModel,
//       BuildContext context,
//       ) {
//     _controller.text = '';
//     return AlertDialog(
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(
//             controller: _controller,
//           ),
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             print(_controller.text);
//             // viewModel.onEvent(ContentsEvent.insert2(_controller.text, 1990, 'female'));
//             Navigator.pop(context, true);
//           },
//           child: const Text('Insert'),
//         ),
//       ],
//     );
//   }
// }