import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class LearnExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 50, width: 50, color: Colors.red),
        // flex 2 takes up 2/3 of the remaining space
        Expanded(flex: 2, child: Container(height: 50, color: Colors.green)),
        // flex 1 takes up 1/3 of the remaining space
        Expanded(flex: 1, child: Container(height: 50, color: Colors.blue,),)
      ],
    );
  }
}
