import 'package:flutter/material.dart';

class AssignmentUpload extends StatelessWidget {
  const AssignmentUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Assignment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Create New Assignment",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: "Assignment Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Assignment Description",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Assignment uploaded"),
                    ),
                  );
                },
                icon: const Icon(Icons.upload_file),
                label: const Text("Upload Assignment"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}