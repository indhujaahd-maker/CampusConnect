import 'package:flutter/material.dart';

class AssignmentReview extends StatelessWidget {
  const AssignmentReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review Assignments"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Submitted Assignments",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text("Student Roll No: CSE2026001"),
              subtitle: const Text("Assignment submitted"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Assignment reviewed"),
                    ),
                  );
                },
                child: const Text("Review"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}