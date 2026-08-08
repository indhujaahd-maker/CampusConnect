import 'package:flutter/material.dart';

class StudentManagement extends StatelessWidget {
  const StudentManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Management"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Students",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text("1"),
              ),
              title: Text("Indhujaa D"),
              subtitle: Text(
                "CSE2026001 • Computer Science",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text("2"),
              ),
              title: Text("Student Two"),
              subtitle: Text(
                "CSE2026002 • Information Technology",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text("3"),
              ),
              title: Text("Student Three"),
              subtitle: Text(
                "ECE2026003 • Electronics",
              ),
            ),
          ),
        ],
      ),
    );
  }
}