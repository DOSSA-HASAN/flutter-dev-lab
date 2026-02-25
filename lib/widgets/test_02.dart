import "package:flutter/material.dart";

class ProfileHeaderChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey.shade100,
      child: Row(
        children: [
          // 30% of parents width and full heigh
          Flexible(
            flex: 3,
            child: FractionallySizedBox(
              child: Center(
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),
            ),
          ),
          Spacer(),
          Expanded(child: Column(children: [
            Align(
              alignment: AlignmentGeometry.topRight,
              child: Text("User Name", style: TextStyle(fontSize: 20),),
            ),
            Spacer(),
            Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Text("Online", style: TextStyle(color: Colors.green),),
            )
          ])),
        ],
      ),
    );
  }
}
