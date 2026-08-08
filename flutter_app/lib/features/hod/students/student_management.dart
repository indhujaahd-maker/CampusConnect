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
            "Department Students",
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
                "CSE2026001 • Final Year",
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text("2"),
              ),
              title: Text("Student Two"),
              subtitle: Text(
                "CSE2026002 • Final Year",
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text("3"),
              ),
              title: Text("Student Three"),
              subtitle: Text(
                "CSE2026003 • Third Year",
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}