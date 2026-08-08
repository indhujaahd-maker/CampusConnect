import 'package:flutter/material.dart';

class VendorOrders extends StatelessWidget {
  const VendorOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Order #1001"),
              subtitle: Text("Food Order • Student"),
              trailing: Text("₹250"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Order #1002"),
              subtitle: Text("Stationery • Student"),
              trailing: Text("₹180"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Order #1003"),
              subtitle: Text("Food Order • Faculty"),
              trailing: Text("₹320"),
            ),
          ),
        ],
      ),
    );
  }
}