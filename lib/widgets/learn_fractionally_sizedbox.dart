import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class LearnFractionallySizedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      color: Colors.grey[200],
      child: Align(
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: 0.5, // half the parent
          heightFactor: 1.0, // full heigh of parent
          child: Container(color: Colors.purple),
        ),
      ),
    );
  }
}
