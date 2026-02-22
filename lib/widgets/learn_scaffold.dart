import 'package:flutter/material.dart';
import 'package:flutter_dev_lab/widgets/learn_safe_area.dart';

class LearnScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar, backgroundColor, floatingActionButton, body
      appBar: AppBar(title: Text("Learning Scaffold")),
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Clicked FAb...");
        },
      ),
      body: LearnSafeArea(),
    );
  }
}
