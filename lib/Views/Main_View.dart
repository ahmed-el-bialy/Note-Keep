import 'package:flutter/material.dart';
import '../Widgets/NewsListBuilder.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keep Notes", style: TextStyle(fontSize: 27)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Card(
              color: Colors.white.withValues(alpha: 0.1),
              elevation: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 30, color: Colors.white),
              ),
            ),
          ),
        ],
        elevation: 5,
      ),

      body: NotesListBuilder(),

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

