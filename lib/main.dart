import 'package:flutter/material.dart';
import 'package:flutter_dev_lab/widgets/learn_grid_view.dart';
import 'package:flutter_dev_lab/widgets/learn_list_view.dart';
import 'package:flutter_dev_lab/widgets/learn_scaffold.dart';
import 'package:flutter_dev_lab/widgets/learn_slivers.dart';
import 'package:flutter_dev_lab/widgets/master_slivers.dart';
import 'package:flutter_dev_lab/widgets/re_learn_lists_and_grids.dart';
import 'package:flutter_dev_lab/widgets/responsive_lab_screen.dart';
import 'package:flutter_dev_lab/widgets/test_01.dart';
import 'package:flutter_dev_lab/widgets/test_03.dart';
import 'package:flutter_dev_lab/widgets/test_04.dart';
import 'package:flutter_dev_lab/widgets/widget_reminder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purpleAccent,
          foregroundColor: Colors.white,
          elevation: 0,
        )
      ),
      home: ReLearnListsAndGrids(),
    );
  }
}
