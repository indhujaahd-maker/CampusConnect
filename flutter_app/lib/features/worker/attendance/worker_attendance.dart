import 'package:flutter/material.dart';

class WorkerAttendance extends StatelessWidget {
  const WorkerAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Worker Attendance"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("August 2026"),
              subtitle: Text("Working Days: 7"),
              trailing: Text(
                "100%",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Today's Status"),
              subtitle: Text("Present"),
              trailing: Icon(Icons.check_circle),
            ),
          ),
        ],
      ),
    );
  }
}