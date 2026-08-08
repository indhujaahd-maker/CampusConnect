import 'package:flutter/material.dart';

class WorkerComplaints extends StatelessWidget {
  const WorkerComplaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Worker Complaints"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Task reassignment request"),
              subtitle: Text("Submitted by Worker"),
              trailing: Icon(Icons.pending),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: Text("Equipment request"),
              subtitle: Text("Resolved"),
              trailing: Icon(Icons.done),
            ),
          ),
        ],
      ),
    );
  }
}