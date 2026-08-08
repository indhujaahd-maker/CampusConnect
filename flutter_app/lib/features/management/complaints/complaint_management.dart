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
            "Institution Complaints",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Hostel Maintenance"),
              subtitle: Text(
                "Submitted by Student",
              ),
              trailing: Icon(Icons.pending),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Laboratory Equipment"),
              subtitle: Text(
                "Submitted by Faculty",
              ),
              trailing: Icon(Icons.check_circle),
            ),
          ),
        ],
      ),
    );
  }
}