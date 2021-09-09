import 'package:admin_dashboard/constants/constants.dart';
import 'package:admin_dashboard/constants/responsive.dart';
import 'package:admin_dashboard/provider/controller.dart';
import 'package:admin_dashboard/screens/components/dashboard_content.dart';
import 'package:admin_dashboard/widgets/drawer/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) 
            const Expanded(child: DrawerMenu(),),
            const Expanded(
              flex: 5,
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
