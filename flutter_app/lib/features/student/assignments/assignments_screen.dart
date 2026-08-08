import 'package:flutter/material.dart';

class AssignmentsScreen extends StatelessWidget {
  const AssignmentsScreen({super.key});

  final List<Map<String, dynamic>> assignments = const [
    {
      "subject": "Artificial Intelligence",
      "title": "Machine Learning Algorithms",
      "deadline": "20-08-2026",
      "status": "Pending",
    },
    {
      "subject": "Database Management System",
      "title": "SQL Optimization Techniques",
      "deadline": "25-08-2026",
      "status": "Submitted",
    },
    {
      "subject": "Computer Networks",
      "title": "Network Security Report",
      "deadline": "30-08-2026",
      "status": "Pending",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignments",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: ListView.builder(
          itemCount: assignments.length,

          itemBuilder: (context, index) {
            final String subject =
                assignments[index]["subject"];

            final String title =
                assignments[index]["title"];

            final String deadline =
                assignments[index]["deadline"];

            final String status =
                assignments[index]["status"];

            final bool isSubmitted =
                status == "Submitted";

            return Card(
              elevation: 4,

              margin:
                  const EdgeInsets.only(bottom: 16),

              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          child: Icon(
                            Icons.assignment,
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: Text(
                            subject,

                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),

                        Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),

                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(20),

                            color: isSubmitted
                                ? Colors.green
                                    .withValues(alpha: 0.15)
                                : Colors.orange
                                    .withValues(alpha: 0.15),
                          ),

                          child: Text(
                            status,

                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,

                              color: isSubmitted
                                  ? Colors.green
                                  : Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Text(
                      title,

                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 18,
                        ),

                        const SizedBox(width: 8),

                        Text(
                          "Deadline: $deadline",
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,

                      child: ElevatedButton.icon(
                        onPressed: isSubmitted
                            ? null
                            : () {
                                ScaffoldMessenger
                                    .of(context)
                                    .showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Submission for \"$title\" will be added soon.",
                                    ),
                                  ),
                                );
                              },

                        icon: Icon(
                          isSubmitted
                              ? Icons.check
                              : Icons.upload_file,
                        ),

                        label: Text(
                          isSubmitted
                              ? "Submitted"
                              : "Submit Assignment",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
