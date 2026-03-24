import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetReminderScreen extends StatelessWidget {
  const WidgetReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reminder Widget"),
        backgroundColor: Colors.grey.shade300,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(color: Colors.blue.shade300),
                  ),
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: FractionallySizedBox(
                            widthFactor: 0.4,
                            child: Container(height: 10, color: Colors.blue),
                          ),
                        ),
                        const Spacer(),
                        const Text("40% Loaded"),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.orange[100],
                            child: const Text(
                              "I am flexible, I only take up as much space as this text needs",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
