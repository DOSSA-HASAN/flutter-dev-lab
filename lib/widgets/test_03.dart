import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test03 extends StatelessWidget {
  const Test03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test 03 - Lab"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            // width: double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.purpleAccent[100],
              boxShadow: [
                BoxShadow(color: Colors.black, offset: Offset(10, 10)),
              ],
            ),
            child: Center(
              child: const Text(
                "Featured Deals",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent[150],
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(10, 10)),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 250,
                  child: Card(
                    color: Colors.pinkAccent[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(child: Text("$index")),
                      title: Text("Product Number $index"),
                      subtitle: const Text("Description goes here"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[100],
                boxShadow: const [BoxShadow(color: Colors.black, offset: Offset(10, 10))]
              ),
              child: ListView.separated(
                itemCount: 50,
                separatorBuilder: (context, index){
                  return const Divider(height: 1,);
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("$index"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
