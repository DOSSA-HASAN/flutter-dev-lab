import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev_lab/models/app_model.dart';

class DetailsScreen extends StatelessWidget {
  final AppModel appDetails;

  const DetailsScreen({super.key, required this.appDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appDetails.themeColor,
        title: Hero(
          tag: appDetails.name,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${appDetails.name}'),
                Icon(Icons.apps, size: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
