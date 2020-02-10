import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pool_up/login_screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      color: Colors.blue,
      title: 'Flutter Demo',
      home: LoginScreen()
    );
  }
}