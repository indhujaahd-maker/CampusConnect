import 'package:flutter/material.dart';

class OnlineClass extends StatelessWidget {
  const OnlineClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Class"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(
              Icons.video_call,
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              "Start Online Class",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Online class started"),
                    ),
                  );
                },
                icon: const Icon(Icons.video_call),
                label: const Text("Start Class"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}