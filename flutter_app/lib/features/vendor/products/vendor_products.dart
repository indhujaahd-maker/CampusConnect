import 'package:flutter/material.dart';

class VendorProducts extends StatelessWidget {
  const VendorProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.fastfood),
              title: Text("Veg Meals"),
              subtitle: Text("Food"),
              trailing: Text("₹80"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.local_drink),
              title: Text("Fresh Juice"),
              subtitle: Text("Beverage"),
              trailing: Text("₹40"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text("Notebook"),
              subtitle: Text("Stationery"),
              trailing: Text("₹60"),
            ),
          ),
        ],
      ),
    );
  }
}