import 'package:flutter/material.dart';


class MasterSlivers extends StatelessWidget {
  const MasterSlivers({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Master Clas - Lab"),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 80,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange[100]
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5
              ),
              delegate: SliverChildBuilderDelegate(
                  (content, index) => Container(
                    color: Colors.deepPurpleAccent,
                    child: Center(child: Text("Grid item: $index"),),
                  ),
                childCount: 4
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (content, index) => ListTile(
                leading: Icon(Icons.safety_check),
                title: Text("List tile $index"),
              ),
            childCount: 10
          )
          )
        ],
      ),
    );
  }
}