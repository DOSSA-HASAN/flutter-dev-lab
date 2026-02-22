import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class LearnSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Icon(Icons.menu),
        Spacer(),
        Icon(Icons.menu),
      ],
    );
  }
}