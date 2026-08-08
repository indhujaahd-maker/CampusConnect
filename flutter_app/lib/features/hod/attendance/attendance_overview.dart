import 'package:flutter/material.dart';

class AttendanceOverview extends StatelessWidget {
  const AttendanceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance Overview"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Department Attendance",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("CSE Final Year"),
              subtitle: Text("Average Attendance"),
              trailing: Text(
                "86%",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("CSE Third Year"),
              subtitle: Text("Average Attendance"),
              trailing: Text(
                "89%",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("CSE Second Year"),
              subtitle: Text("Average Attendance"),
              trailing: Text(
                "91%",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}