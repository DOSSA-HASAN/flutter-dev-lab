import 'package:flutter/material.dart';
import 'package:flutter_dev_lab/widgets/learn_scaffold.dart';
import 'package:flutter_dev_lab/widgets/test_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test01(),
    );
  }
}
