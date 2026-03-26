import 'package:flutter/material.dart';

class LearnSlivers extends StatelessWidget {
  const LearnSlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver App Bar - Lab"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text("I am a normal box in a sliver world"),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            delegate: SliverChildBuilderDelegate(
              (content, index) =>
                  Container(color: Colors.purple[100 * (index % 9)]),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
