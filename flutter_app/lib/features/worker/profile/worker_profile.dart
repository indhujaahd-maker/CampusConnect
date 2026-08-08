import 'package:flutter/material.dart';

class WorkerProfile extends StatelessWidget {
  const WorkerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Worker Profile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CircleAvatar(
            radius: 45,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              "Campus Service Worker",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),

          ListTile(
            leading: Icon(Icons.badge),
            title: Text("Worker ID"),
            subtitle: Text("WRK2026001"),
          ),

          ListTile(
            leading: Icon(Icons.work),
            title: Text("Department"),
            subtitle: Text("Campus Maintenance"),
          ),

          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("worker@campus.edu"),
          ),
        ],
      ),
    );
  }
}