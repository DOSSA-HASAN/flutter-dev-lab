import 'package:flutter/material.dart';

class Test04 extends StatelessWidget {
  const Test04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            backgroundColor: Colors.deepPurpleAccent,
            flexibleSpace: FlexibleSpaceBar(title: Text("Explore Apps")),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: (MediaQuery.of(context).size.width / 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      style: BorderStyle.solid,
                    ),
                    color: Colors.deepPurpleAccent[(index % 5) * 100],
                  ),
                  child: Center(child: Text('$index')),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                decoration: BoxDecoration(color: Colors.green),
                height: 50,
                width: 50,
              ),
              childCount: 6,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: Colors.red,
                title: Text("Recomended Apps"),
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
