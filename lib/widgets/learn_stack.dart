import 'package:flutter/material.dart';

class LearnStack extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle
            ),
            child: Icon(Icons.person, size: 50, color: Colors.white,),
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
                border: Border.all(width: 2, color: Colors.white)
              ),
            ),
          )
        ],
      ),
    );
  }
}