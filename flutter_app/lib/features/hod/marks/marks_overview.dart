import 'package:flutter/material.dart';

class MarksOverview extends StatelessWidget {
  const MarksOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marks Overview"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Academic Performance",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.grade),
              title: Text("Data Structures"),
              subtitle: Text("Department Average"),
              trailing: Text("82%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.grade),
              title: Text("Database Management"),
              subtitle: Text("Department Average"),
              trailing: Text("85%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.grade),
              title: Text("Artificial Intelligence"),
              subtitle: Text("Department Average"),
              trailing: Text("88%"),
            ),
          ),
        ],
      ),
    );
  }
}