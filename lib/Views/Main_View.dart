import 'package:flutter/material.dart';

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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.orange[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "First Note",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Text(
                  "This is  the first note in flutter app",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_rounded,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  (DateTime.now().timeZoneOffset).toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
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
