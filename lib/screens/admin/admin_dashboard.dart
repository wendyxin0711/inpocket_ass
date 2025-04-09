import 'package:flutter/material.dart';
import '../../routes.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // TODO: Show notifications
            },
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildDashboardCard(
            context,
            'Voucher Management',
            Icons.card_giftcard,
            Colors.blue,
            () {
              Navigator.pushNamed(context, Routes.voucherManagement);
            },
          ),
          _buildDashboardCard(
            context,
            'Category Management',
            Icons.category,
            Colors.green,
            () {
              Navigator.pushNamed(context, Routes.categoryManagement);
            },
          ),
          _buildDashboardCard(
            context,
            'Content Approval',
            Icons.check_circle,
            Colors.orange,
            () {
              Navigator.pushNamed(context, Routes.contentApproval);
            },
          ),
          _buildDashboardCard(
            context,
            'User Management',
            Icons.people,
            Colors.purple,
            () {
              // TODO: Navigate to user management
            },
          ),
          _buildDashboardCard(
            context,
            'Analytics',
            Icons.analytics,
            Colors.teal,
            () {
              // TODO: Navigate to analytics
            },
          ),
          _buildDashboardCard(
            context,
            'Settings',
            Icons.settings,
            Colors.grey,
            () {
              // TODO: Navigate to settings
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: color,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 