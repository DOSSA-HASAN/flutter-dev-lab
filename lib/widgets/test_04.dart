import 'package:flutter/material.dart';

class Test04 extends StatelessWidget {
  const Test04({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 250,
              backgroundColor: Theme.of(context).colorScheme.primary,
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
                  title: Text("Recomended Apps", style: TextStyle(color:colorScheme.primary),),
                ),
                childCount: 20,
              ),
            ),
          ],
        ),
    );
  }
}
