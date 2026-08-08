import 'package:flutter/material.dart';

class ManagementProfile extends StatelessWidget {
  const ManagementProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Management Profile"),
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
              "Institution Management",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),

          ListTile(
            leading: Icon(Icons.badge),
            title: Text("Administrator ID"),
            subtitle: Text("ADM2026001"),
          ),

          ListTile(
            leading: Icon(Icons.business),
            title: Text("Institution"),
            subtitle: Text("Campus Connect University"),
          ),

          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("management@college.edu"),
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