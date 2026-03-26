import 'package:flutter/material.dart';

class LearnSlivers extends StatelessWidget {
  const LearnSlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Lab"),
              background: Container(color: Colors.purple),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text("Sliver Item $index")),
              childCount: 50
            ),
          ),
        ],
      ),
    );
  }
}
