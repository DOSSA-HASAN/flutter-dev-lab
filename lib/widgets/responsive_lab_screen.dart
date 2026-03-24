import 'package:flutter/material.dart';

class ResponsiveLabScreen extends StatelessWidget {
  const ResponsiveLabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Screen Math -> Media query
    // Get total width of physical device screen
    double fullWidth = MediaQuery.of(context).size.width;
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Lab Test"),
        backgroundColor: Colors.pink,
      ),
      // Wrap the whole body so if the content is too tall user can scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Device Stats: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Width: ${fullWidth.toStringAsFixed(0)}px"),
              Text("Orientation: ${isLandscape ? "Landscape" : "Portrait"}"),

              const SizedBox(height: 20),
              const Text("Categorized tags: "),
              const SizedBox(height: 10),
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: const [
                  Chip(label: Text("Development")),
                  Chip(label: Text("Design")),
                  Chip(label: Text("Backend")),
                  Chip(label: Text("Flutter")),
                  Chip(label: Text("Architecture")),
                  Chip(label: Text("State Management")),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Adaptive Component (Layout Builder):"),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                color: Colors.blueGrey[50],
                padding: EdgeInsets.all(16),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 300) {
                      return const Column(
                        children: [Icon(Icons.vignette, size: 50)],
                      );
                    } else {
                      return const Row(
                        children: [
                          Icon(Icons.vignette, size: 50),
                          SizedBox(width: 20,),
                          Text("Wide view: plenty of space here")
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
