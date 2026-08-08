import 'package:flutter/material.dart';

class WorkerTasks extends StatelessWidget {
  const WorkerTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tasks"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.task),
              title: Text("Repair Projector"),
              subtitle: Text("Room 204"),
              trailing: Icon(Icons.pending),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.task),
              title: Text("Clean Laboratory"),
              subtitle: Text("Computer Lab 2"),
              trailing: Icon(Icons.check_circle),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.task),
              title: Text("Fix Water Leakage"),
              subtitle: Text("Hostel Block A"),
              trailing: Icon(Icons.pending),
            ),
          ),
        ],
      ),
    );
  }
}