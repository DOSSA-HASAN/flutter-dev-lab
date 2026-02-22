// Box widgets include: Container, SizedBox and Padding
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LearnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width, height, padding, margin, alignment, decoration
      width: 200,
      height: 100,
      padding: EdgeInsets.all(20),
      // margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color, border, border radius, box shadow
        color: Colors.blue,
        border: Border.all(color: Colors.black26, width: 26),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
            offset: Offset(5, 5),
          ),
        ],
      ),
    );
  }
}

class LearnSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width, height, child
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          print("Clicked Elevated button...");
        },
        child: Text("Click me!"),
      ),
    );
  }
}

class LearnPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: const Text("I have space on my left and right"),
    );
  }
}
