import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final appName;
  final index;
  const DetailsScreen({super.key, required this.appName, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(tag: 'app-icon-$index', child: Icon(Icons.apps, size: 50,)),
      )
    );
  }
}