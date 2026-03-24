import "package:flutter/material.dart";

class LearnWrap extends StatelessWidget {
  const LearnWrap({super.key});

  @override
  Widget build(BuildContext context){
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: [
        Chip(label: Text("Flutter")),
        Chip(label: Text("Dart")),
        Chip(label: Text("Backend")),
        Chip(label: Text("Architecture")),
      ],
    );
  }
}