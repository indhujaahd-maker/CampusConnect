import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  final List<Map<String, dynamic>> marks = const [
    {
      "subject": "Artificial Intelligence",
      "mark": 28,
      "total": 30,
    },
    {
      "subject": "Database Management System",
      "mark": 27,
      "total": 30,
    },
    {
      "subject": "Computer Networks",
      "mark": 29,
      "total": 30,
    },
    {
      "subject": "Software Engineering",
      "mark": 26,
      "total": 30,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Marks & Results",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Semester Result",

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
                      backgroundColor: Colors.blue,

                      child: Icon(
                        Icons.school,
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
                          "CGPA: 9.2",

                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Semester 5 Result",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "Internal Marks",

              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: marks.length,

                itemBuilder: (context, index) {
                  final String subject =
                      marks[index]["subject"];

                  final int mark =
                      marks[index]["mark"];

                  final int total =
                      marks[index]["total"];

                  final double percentage =
                      mark / total;

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
                                "$mark/$total",

                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          LinearProgressIndicator(
                            value: percentage,
                            minHeight: 8,

                            borderRadius:
                                BorderRadius.circular(10),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "${(percentage * 100).toStringAsFixed(0)}% scored",
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
