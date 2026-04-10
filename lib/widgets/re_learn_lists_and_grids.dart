import 'package:flutter/material.dart';

class ReLearnListsAndGrids extends StatelessWidget {
  const ReLearnListsAndGrids({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.list),
          title: Text("Normal list $index"),
        ),
      ),
    );
  }
}
