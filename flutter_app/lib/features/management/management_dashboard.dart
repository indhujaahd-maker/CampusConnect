import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/management_profile.dart';
import 'students/student_management.dart';
import 'faculty/faculty_management.dart';
import 'finance/finance_management.dart';
import 'complaints/complaint_management.dart';
import 'notices/notice_management.dart';
import 'reports/institution_reports.dart';

class ManagementDashboard extends StatelessWidget {
  const ManagementDashboard({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "title": "Management Profile",
      "icon": Icons.person,
    },
    {
      "title": "Student Management",
      "icon": Icons.people,
    },
    {
      "title": "Faculty Management",
      "icon": Icons.school,
    },
    {
      "title": "Finance Management",
      "icon": Icons.account_balance,
    },
    {
      "title": "Complaint Management",
      "icon": Icons.report_problem,
    },
    {
      "title": "Notice Management",
      "icon": Icons.notifications,
    },
    {
      "title": "Institution Reports",
      "icon": Icons.bar_chart,
    },
    {
      "title": "Notifications",
      "icon": Icons.notifications_active,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Management Dashboard",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Welcome Management 👋",

              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Manage institutional operations efficiently",

              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                itemCount: services.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.1,
                ),

                itemBuilder: (context, index) {
                  final String selectedService =
                      services[index]["title"];

                  return DashboardCard(
                    title: selectedService,
                    icon: services[index]["icon"],

                    onTap: () {
                      if (selectedService ==
                          "Management Profile") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ManagementProfile(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Student Management") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const StudentManagement(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Faculty Management") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const FacultyManagement(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Finance Management") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const FinanceManagement(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Complaint Management") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ComplaintManagement(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Notice Management") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const NoticeManagement(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Institution Reports") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const InstitutionReports(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Notifications") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Notifications feature coming soon",
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
