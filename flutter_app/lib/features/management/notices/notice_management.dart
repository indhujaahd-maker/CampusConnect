import 'package:flutter/material.dart';

class NoticeManagement extends StatelessWidget {
  const NoticeManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notice Management"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Institution Notices",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Semester Examination Schedule",
              ),
              subtitle: const Text(
                "Published for all departments",
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Annual Sports Day",
              ),
              subtitle: const Text(
                "Registration is now open",
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Create notice feature coming soon",
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text("Create New Notice"),
            ),
          ),
        ],
      ),
    );
  }
}