import 'package:flutter/material.dart';

class LearnStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TestStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 300,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(child: Container(decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(15)),)),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: const Text("50% OFF", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),

          // 3. The Button: Correctly used Align!
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10), // Added padding so it's not touching the edge
              child: Text("Buy Now", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          )
        ],
      ),
    );
  }
}
