import 'package:flutter/material.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teacher Profile"),
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
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name"),
            subtitle: Text("Teacher Name"),
          ),
          ListTile(
            leading: Icon(Icons.badge),
            title: Text("Employee ID"),
            subtitle: Text("TCH2026001"),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text("Department"),
            subtitle: Text("Computer Science Engineering"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("teacher@college.edu"),
          ),
        ],
      ),
    );
  }
}