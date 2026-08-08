import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/hod_profile.dart';
import 'students/student_management.dart';
import 'attendance/attendance_overview.dart';
import 'marks/marks_overview.dart';
import 'faculty/faculty_management.dart';
import 'complaints/complaint_management.dart';
import 'reports/department_reports.dart';

class HodDashboard extends StatelessWidget {
  const HodDashboard({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "title": "HOD Profile",
      "icon": Icons.person,
    },
    {
      "title": "Student Management",
      "icon": Icons.people,
    },
    {
      "title": "Attendance Overview",
      "icon": Icons.fact_check,
    },
    {
      "title": "Marks Overview",
      "icon": Icons.grade,
    },
    {
      "title": "Faculty Management",
      "icon": Icons.school,
    },
    {
      "title": "Complaints",
      "icon": Icons.report_problem,
    },
    {
      "title": "Department Reports",
      "icon": Icons.bar_chart,
    },
    {
      "title": "Notifications",
      "icon": Icons.notifications,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOD Dashboard",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Welcome HOD 👋",

              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Manage your department efficiently",

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
                      if (selectedService == "HOD Profile") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const HodProfile(),
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
                          "Attendance Overview") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AttendanceOverview(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Marks Overview") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MarksOverview(),
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
                          "Complaints") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ComplaintManagement(),
                          ),
                        );
                      }

                      else if (selectedService ==
                          "Department Reports") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DepartmentReports(),
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
