import 'package:flutter/material.dart';

class FacultyManagement extends StatelessWidget {
  const FacultyManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faculty Management"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Department Faculty",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Dr. Faculty One"),
              subtitle: Text(
                "Professor • Computer Science",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Prof. Faculty Two"),
              subtitle: Text(
                "Assistant Professor • Computer Science",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Dr. Faculty Three"),
              subtitle: Text(
                "Associate Professor • Computer Science",
              ),
            ),
          ),
        ],
      ),
    );
  }
}