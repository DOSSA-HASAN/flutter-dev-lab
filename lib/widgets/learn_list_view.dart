import 'package:flutter/material.dart';

class LearnListView extends StatelessWidget {
  const LearnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.Builder Lab"), backgroundColor: Colors.teal,),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(child: Text("$index"),),
            title: Text("Product Number $index"),
            subtitle: const Text("Description goes here"),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}