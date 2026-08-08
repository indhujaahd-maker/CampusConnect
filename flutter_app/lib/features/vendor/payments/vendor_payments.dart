import 'package:flutter/material.dart';

class VendorPayments extends StatelessWidget {
  const VendorPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vendor Payments"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.currency_rupee),
              title: Text("Today's Sales"),
              trailing: Text("₹4,250"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("This Month"),
              trailing: Text("₹85,600"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.pending),
              title: Text("Pending Settlement"),
              trailing: Text("₹12,400"),
            ),
          ),
        ],
      ),
    );
  }
}