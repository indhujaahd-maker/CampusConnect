import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/vendor_profile.dart';
import 'orders/vendor_orders.dart';
import 'products/vendor_products.dart';
import 'payments/vendor_payments.dart';
import 'complaints/vendor_complaints.dart';

class VendorDashboard extends StatelessWidget {
  const VendorDashboard({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "title": "Vendor Profile",
      "icon": Icons.person,
    },
    {
      "title": "Orders",
      "icon": Icons.shopping_bag,
    },
    {
      "title": "Products",
      "icon": Icons.inventory,
    },
    {
      "title": "Payments",
      "icon": Icons.currency_rupee,
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
        title: const Text("Vendor Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Vendor 👋",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Manage your campus services",
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
                      if (selectedService == "Vendor Profile") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VendorProfile(),
                          ),
                        );
                      } else if (selectedService == "Orders") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VendorOrders(),
                          ),
                        );
                      } else if (selectedService == "Products") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VendorProducts(),
                          ),
                        );
                      } else if (selectedService == "Payments") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VendorPayments(),
                          ),
                        );
                      } else if (selectedService == "Complaints") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VendorComplaints(),
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