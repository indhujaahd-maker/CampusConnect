import 'package:flutter/material.dart';

class ServiceRequests extends StatelessWidget {
  const ServiceRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service Requests"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.electrical_services),
              title: Text("Electrical Repair"),
              subtitle: Text("Room 204 • High Priority"),
              trailing: Icon(Icons.pending),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.cleaning_services),
              title: Text("Classroom Cleaning"),
              subtitle: Text("Block A • Normal Priority"),
              trailing: Icon(Icons.pending),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.plumbing),
              title: Text("Plumbing Issue"),
              subtitle: Text("Hostel Block B"),
              trailing: Icon(Icons.check_circle),
            ),
          ),
        ],
      ),
    );
  }
}