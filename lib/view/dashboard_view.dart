import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adabtive_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdabtiveLayout(
        mobileBuilder: (context) => Center(child: Text('Mobile View')),
        tabletBuilder: (context) => Center(child: Text('Tablet View')),
        desktopBuilder: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
