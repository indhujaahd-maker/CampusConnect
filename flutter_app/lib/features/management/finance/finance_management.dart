import 'package:flutter/material.dart';

class FinanceManagement extends StatelessWidget {
  const FinanceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finance Management"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Financial Overview",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Total Fees Collected"),
              trailing: Text(
                "₹45,00,000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.pending),
              title: Text("Pending Fees"),
              trailing: Text(
                "₹8,50,000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.receipt),
              title: Text("Transactions"),
              trailing: Text(
                "1,248",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}