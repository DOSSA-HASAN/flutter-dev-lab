import 'package:flutter/material.dart';

class ReLearnListsAndGrids extends StatelessWidget {
  const ReLearnListsAndGrids({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) =>
            Card(child: Center(child: Text("Grid $index"))),
      ),

      // ListView.builder(
      //   itemCount: 20,
      //   itemBuilder: (context, index) => ListTile(
      //     leading: const Icon(Icons.list),
      //     title: Text("Normal list $index"),
      //   ),
      // ),
    );
  }
}
