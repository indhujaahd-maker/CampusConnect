import 'package:flutter/material.dart';

class InstitutionReports extends StatelessWidget {
  const InstitutionReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Institution Reports"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Institution Statistics",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          _reportCard(
            "Total Students",
            "2,450",
            Icons.people,
          ),

          _reportCard(
            "Faculty Members",
            "186",
            Icons.school,
          ),

          _reportCard(
            "Departments",
            "12",
            Icons.business,
          ),

          _reportCard(
            "Average Attendance",
            "88%",
            Icons.fact_check,
          ),

          _reportCard(
            "Pending Complaints",
            "24",
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