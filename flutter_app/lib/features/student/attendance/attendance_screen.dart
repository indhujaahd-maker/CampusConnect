import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  final List<Map<String, dynamic>> attendance = const [
    {
      "subject": "Artificial Intelligence",
      "percentage": 92,
    },
    {
      "subject": "Database Management System",
      "percentage": 88,
    },
    {
      "subject": "Computer Networks",
      "percentage": 95,
    },
    {
      "subject": "Software Engineering",
      "percentage": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Attendance",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Overall Attendance",

              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Card(
              elevation: 4,

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.green,

                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [
                        Text(
                          "91%",

                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Current Semester",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "Subject Wise Attendance",

              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: attendance.length,

                itemBuilder: (context, index) {
                  final String subject =
                      attendance[index]["subject"];

                  final int percentage =
                      attendance[index]["percentage"];

                  final bool isGood =
                      percentage >= 75;

                  return Card(
                    margin:
                        const EdgeInsets.only(bottom: 12),

                    child: Padding(
                      padding: const EdgeInsets.all(16),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.book,
                                size: 28,
                              ),

                              const SizedBox(width: 12),

                              Expanded(
                                child: Text(
                                  subject,

                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ),

                              Text(
                                "$percentage%",

                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight:
                                      FontWeight.bold,
                                  color: isGood
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          LinearProgressIndicator(
                            value: percentage / 100,
                            minHeight: 8,

                            borderRadius:
                                BorderRadius.circular(10),
                          ),
                        ],
                      ),
                    ),
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
