import 'package:flutter/material.dart';
import 'package:geozapp/Components/Charging_Body.dart';

import 'main_drawer.dart';

// ignore: camel_case_types
class Charging_Stations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("Charging Stations"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Body(),
    );
  }
}
