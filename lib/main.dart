// API key
// AIzaSyDyIl_PtQxZNU3KcEeOb_lZu7Hy3kK1rfI

import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:electica/screen/home_screen.dart';
import 'package:electica/screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Electica'),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
