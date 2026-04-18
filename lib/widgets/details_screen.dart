import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev_lab/models/app_model.dart';

class DetailsScreen extends StatefulWidget {
  final AppModel appDetails;

  const DetailsScreen({super.key, required this.appDetails});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.appDetails.themeColor,
        title: Hero(
          tag: widget.appDetails.name,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${widget.appDetails.name}'),
                Icon(Icons.apps, size: 50),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: widget.appDetails.name,
            child: Icon(
              Icons.add,
              color: widget.appDetails.themeColor,
              size: 100,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(_isExpanded ? "Hide Specs" : "Show Specs"),
          ),

          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            width: double.infinity,
            height: _isExpanded ? 150 : 0,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SingleChildScrollView(
              child: Text("This app is categorized under ${widget.appDetails.name}"),
            ),
          ),
        ],
      ),
    );
  }
}
