// ignore_for_file: file_names

import 'package:flutter/material.dart';

class A1a_appPage extends StatefulWidget {
  String subtype;
  String appName;
  A1a_appPage({Key? key, required this.subtype, required this.appName})
      : super(key: key);

  @override
  _A1a_appPageState createState() => _A1a_appPageState();
}

class _A1a_appPageState extends State<A1a_appPage> {

  @override
  Widget build(BuildContext context) {
    String appName = widget.appName;

    String contents1 = (widget.subtype == '대출사기') ? '고객명' : '';

    return Scaffold(
      appBar: AppBar(title: Text(appName)),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top:50,left:20),
            child: Row(
              children: [
                Text(contents1, style: TextStyle(fontSize: 17))
              ]
            )
          )
        ]
      )
    );
  }
}
