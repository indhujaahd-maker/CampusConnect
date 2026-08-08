import 'package:flutter/material.dart';

class VendorProfile extends StatelessWidget {
  const VendorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vendor Profile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CircleAvatar(
            radius: 45,
            child: Icon(
              Icons.store,
              size: 50,
            ),
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              "Campus Vendor",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),

          ListTile(
            leading: Icon(Icons.badge),
            title: Text("Vendor ID"),
            subtitle: Text("VEN2026001"),
          ),

          ListTile(
            leading: Icon(Icons.store),
            title: Text("Business"),
            subtitle: Text("Campus Food & Stationery"),
          ),

          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("vendor@campus.edu"),
          ),
        ],
      ),
    );
  }
}