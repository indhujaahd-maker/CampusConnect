import 'package:flutter/material.dart';

class VendorComplaints extends StatelessWidget {
  const VendorComplaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vendor Complaints"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.report_problem),
              title: Text("Order cancellation issue"),
              subtitle: Text("Order #1001"),
              trailing: Icon(Icons.pending),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: Text("Payment issue"),
              subtitle: Text("Resolved"),
              trailing: Icon(Icons.done),
            ),
          ),
        ],
      ),
    );
  }
}