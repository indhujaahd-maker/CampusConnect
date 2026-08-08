import 'package:flutter/material.dart';

class ComplaintManagement extends StatelessWidget {
  const ComplaintManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complaint Management"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Recent Complaints",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Projector not working"),
              subtitle: Text(
                "Room 204 • Submitted by Student",
              ),
              trailing: Icon(Icons.pending),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Classroom fan issue"),
              subtitle: Text(
                "Room 305 • Submitted by Student",
              ),
              trailing: Icon(Icons.check_circle),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Laboratory equipment issue"),
              subtitle: Text(
                "Lab 2 • Submitted by Faculty",
              ),
              trailing: Icon(Icons.pending),
            ),
          ),
        ],
      ),
    );
  }
}