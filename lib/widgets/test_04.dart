import 'package:flutter/material.dart';
import 'package:flutter_dev_lab/models/app_model.dart';
import 'package:flutter_dev_lab/widgets/details_screen.dart';
import 'package:flutter_dev_lab/widgets/learn_expanded.dart';
import 'package:flutter_dev_lab/widgets/like_button.dart';

class Test04 extends StatefulWidget {
  const Test04({super.key});

  @override
  State<Test04> createState() => _Test04State();
}

class _Test04State extends State<Test04> {
  int _clickCount = 0;
  late TextEditingController _searchController;
  String _displayText = "Search for something...";

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _updateSearch() {
    setState(() {
      _displayText = _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   actions: [
          //     IconButton(
          //       onPressed: () {
          //         setState(() {
          //           ++_clickCount;
          //           print(_clickCount);
          //         });
          //       },
          //       icon: Icon(Icons.add, color: Colors.red),
          //     ),
          //   ],
          //   pinned: true,
          //   expandedHeight: 250,
          //   backgroundColor: Theme.of(context).colorScheme.primary,
          //   flexibleSpace: FlexibleSpaceBar(title: Text("Apps Clicked $_clickCount")),
          // ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MySearchDelegate(
              child: Container(
                color: colorScheme.surface,
                padding: EdgeInsets.all(10),
                height: 100,
                child: Center(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) => _updateSearch(),
                  ),
                ),
              ),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: Padding(padding: EdgeInsets.all(10), child: TextField()),
          // ),
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
                      color: theme.colorScheme.secondary,
                      style: BorderStyle.solid,
                    ),
                    color: colorScheme.primary,
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
              mainAxisSpacing: 5,
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
                tileColor: colorScheme.secondary,
                title: Hero(
                  tag: 'App Number - $index',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('App Number - $index'),
                      Icon(Icons.apps, size: 50),
                    ],
                  ),
                ),
                // Text(
                //   "Recomended Apps",
                //   style: TextStyle(color: colorScheme.primary),
                // ),
                onTap: () {
                  final selectedApp = AppModel(
                    name: "App Number - $index",
                    category: "Education",
                    themeColor: Colors.pink,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(appDetails: selectedApp),
                    ),
                  );
                },
              ),
              childCount: 20,
            ),
          ),
          SliverToBoxAdapter(child: LikeButton()),
        ],
      ),
    );
  }
}

class MySearchDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  MySearchDelegate({required this.child, this.height = 100});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(elevation: overlapsContent ? 4 : 0, child: child);
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant MySearchDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}
