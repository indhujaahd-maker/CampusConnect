import 'package:flutter/material.dart';

class TeacherServiceRequest extends StatelessWidget {
  const TeacherServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service Request"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Request Campus Service",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              initialValue: "Cleaning",
              decoration: const InputDecoration(
                labelText: "Service Type",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: "Cleaning",
                  child: Text("Cleaning"),
                ),
                DropdownMenuItem(
                  value: "Electrical",
                  child: Text("Electrical"),
                ),
                DropdownMenuItem(
                  value: "Plumbing",
                  child: Text("Plumbing"),
                ),
                DropdownMenuItem(
                  value: "Projector",
                  child: Text("Projector"),
                ),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 15),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Describe the issue",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Service request submitted",
                      ),
                    ),
                  );
                },
                child: const Text("Submit Request"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}