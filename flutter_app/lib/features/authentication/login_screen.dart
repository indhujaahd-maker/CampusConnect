import 'package:flutter/material.dart';

import '../student/student_dashboard.dart';
import '../parent/parent_dashboard.dart';
import '../teacher/teacher_dashboard.dart';
import '../hod/hod_dashboard.dart';
import '../management/management_dashboard.dart';
import '../vendor/vendor_dashboard.dart';
import '../worker/worker_dashboard.dart';

class LoginScreen extends StatelessWidget {
  final String role;

  const LoginScreen({
    super.key,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$role Login"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            Text(
              "$role Authentication",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: "$role ID",
                prefixIcon: const Icon(Icons.person),
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Widget dashboard;

                  if (role == "Student") {
                    dashboard = const StudentDashboard();
                  } else if (role == "Parent") {
                    dashboard = const ParentDashboard();
                  } else if (role == "Teacher") {
                    dashboard = const TeacherDashboard();
                  } else if (role == "HOD") {
                    dashboard = const HodDashboard();
                  } else if (role == "Management") {
                    dashboard = const ManagementDashboard();
                  } else if (role == "Vendor") {
                    dashboard = const VendorDashboard();
                  } else if (role == "Worker") {
                    dashboard = const WorkerDashboard();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "$role dashboard not found",
                        ),
                      ),
                    );

                    return;
                  }

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dashboard,
                    ),
                  );
                },

                child: const Text(
                  "Login",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

