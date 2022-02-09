// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimulationPage extends StatefulWidget {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          title: Text('1600-xxxx',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400))),
    );
  }
}
