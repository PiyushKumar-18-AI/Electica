import 'package:flutter/material.dart';

import 'main_drawer.dart';

// ignore: camel_case_types
class Privacy_Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text("Wallet"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 141, 191, 83),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1,500.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.lighten))),
        ));
  }
}
