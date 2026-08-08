import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/worker_profile.dart';
import 'requests/service_requests.dart';
import 'tasks/worker_tasks.dart';
import 'complaints/worker_complaints.dart';
import 'attendance/worker_attendance.dart';

class WorkerDashboard extends StatelessWidget {
  const WorkerDashboard({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "title": "Worker Profile",
      "icon": Icons.person,
    },
    {
      "title": "Service Requests",
      "icon": Icons.miscellaneous_services,
    },
    {
      "title": "My Tasks",
      "icon": Icons.task,
    },
    {
      "title": "Attendance",
      "icon": Icons.fact_check,
    },
    {
      "title": "Complaints",
      "icon": Icons.report_problem,
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
        title: const Text("Worker Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Worker 👋",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Manage your campus service tasks",
              style: TextStyle(fontSize: 16),
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
                ),
                itemBuilder: (context, index) {
                  final selectedService =
                      services[index]["title"];

                  return DashboardCard(
                    title: selectedService,
                    icon: services[index]["icon"],
                    onTap: () {
                      if (selectedService == "Worker Profile") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const WorkerProfile(),
                          ),
                        );
                      } else if (selectedService ==
                          "Service Requests") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceRequests(),
                          ),
                        );
                      } else if (selectedService == "My Tasks") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const WorkerTasks(),
                          ),
                        );
                      } else if (selectedService == "Attendance") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const WorkerAttendance(),
                          ),
                        );
                      } else if (selectedService == "Complaints") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const WorkerComplaints(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "$selectedService selected",
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