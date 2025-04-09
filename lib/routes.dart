import 'package:flutter/material.dart';
import 'main.dart';
import 'screens/admin/admin_dashboard.dart';
import 'screens/admin/voucher_management.dart';
import 'screens/admin/category_management.dart';
import 'screens/admin/content_approval.dart';

class Routes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String adminDashboard = '/admin-dashboard';
  static const String voucherManagement = '/voucher-management';
  static const String categoryManagement = '/category-management';
  static const String contentApproval = '/content-approval';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case adminDashboard:
        return MaterialPageRoute(builder: (_) => const AdminDashboard());
      case voucherManagement:
        return MaterialPageRoute(builder: (_) => const VoucherManagement());
      case categoryManagement:
        return MaterialPageRoute(builder: (_) => const CategoryManagement());
      case contentApproval:
        return MaterialPageRoute(builder: (_) => const ContentApproval());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
} 