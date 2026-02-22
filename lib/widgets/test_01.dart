// A screen with a light green background
// a top app bar, and in the very center of the screen
// a white square (100x100) that has rounded corners and a shadow,
// with a "Hello" text inside that is padded 10 pixels from the top.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test 01")),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(10, 5),
              ),
            ],
          ),
          child: const Text("Hello"),
        ),
      ),
    );
  }
}
