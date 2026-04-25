import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.only(left: 24, top: 24, bottom: 24, right: 14),
        decoration: BoxDecoration(
          color: Colors.orange[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 8),
              title: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "This is  the first note in flutter app",
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .6),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_rounded, color: Colors.black, size: 38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                (DateTime.now()).toString().substring(0, 10),
                style: TextStyle(color: Colors.black.withValues(alpha: .7)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
