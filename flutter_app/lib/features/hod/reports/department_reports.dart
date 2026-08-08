import 'package:flutter/material.dart';

class DepartmentReports extends StatelessWidget {
  const DepartmentReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Department Reports"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Department Statistics",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          _reportCard(
            "Total Students",
            "180",
            Icons.people,
          ),

          _reportCard(
            "Faculty Members",
            "24",
            Icons.school,
          ),

          _reportCard(
            "Average Attendance",
            "88%",
            Icons.fact_check,
          ),

          _reportCard(
            "Average Academic Score",
            "84%",
            Icons.grade,
          ),

          _reportCard(
            "Pending Complaints",
            "6",
            Icons.report_problem,
          ),
        ],
      ),
    );
  }

  Widget _reportCard(
    String title,
    String value,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          icon,
          size: 32,
        ),
        title: Text(title),
        trailing: Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}