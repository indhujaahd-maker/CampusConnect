import 'package:flutter/material.dart';

class StudentComplaint extends StatefulWidget {
  const StudentComplaint({super.key});

  @override
  State<StudentComplaint> createState() => _StudentComplaintState();
}

class _StudentComplaintState extends State<StudentComplaint> {
  final TextEditingController rollNumberController =
      TextEditingController();

  final TextEditingController complaintController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Complaint"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Raise Student Complaint",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: rollNumberController,
              decoration: const InputDecoration(
                labelText: "Student Roll Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: complaintController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: "Complaint Details",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (complaintController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Enter complaint details"),
                      ),
                    );
                    return;
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Complaint submitted to management",
                      ),
                    ),
                  );

                  complaintController.clear();
                  rollNumberController.clear();
                },
                child: const Text("Submit Complaint"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}