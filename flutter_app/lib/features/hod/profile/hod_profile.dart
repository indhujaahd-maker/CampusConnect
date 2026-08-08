import 'package:flutter/material.dart';

class HodProfile extends StatelessWidget {
  const HodProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOD Profile"),
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
              "Head of Department",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),

          ListTile(
            leading: Icon(Icons.badge),
            title: Text("Employee ID"),
            subtitle: Text("HOD2026001"),
          ),

          ListTile(
            leading: Icon(Icons.school),
            title: Text("Department"),
            subtitle: Text("Computer Science Engineering"),
          ),

          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("hod@college.edu"),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            subtitle: Text("9876543210"),
          ),
        ],
      ),
    );
  }
}