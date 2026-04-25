import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keep Notes"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 30,))],
        elevation: 5,
      ),


      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.lightBlueAccent,
        ),
        child: IconButton(
          padding: EdgeInsets.all(15),
          color: Colors.black,
          onPressed: () {},
          icon: Icon(Icons.add, size: 35),
        ),
      ),
    );
  }
}
