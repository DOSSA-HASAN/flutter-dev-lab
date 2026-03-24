import 'package:flutter/material.dart';

class LearnGridView extends StatelessWidget {
  const LearnGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Lab"),
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 2 items per row
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemCount: 20,
        itemBuilder: (context, index){
          return Container(
            color: Colors.teal[100 * (index % 9)],
            child: Center(child: Text("${index + 1}"),),
          );
        },
      ),
    );
  }
}
