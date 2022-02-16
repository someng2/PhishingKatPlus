// ignore_for_file: file_names

import 'package:flutter/material.dart';

class A1a_appPage extends StatefulWidget {
  const A1a_appPage({Key? key}) : super(key: key);

  @override
  _A1a_appPageState createState() => _A1a_appPageState();
}

class _A1a_appPageState extends State<A1a_appPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('악성 앱 페이지')),
    );
  }
}
