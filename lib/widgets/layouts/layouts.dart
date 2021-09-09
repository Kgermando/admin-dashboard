import 'package:admin_dashboard/constants/constants.dart';
import 'package:admin_dashboard/constants/responsive.dart';
import 'package:admin_dashboard/locator.dart';
import 'package:admin_dashboard/provider/controller.dart';
import 'package:admin_dashboard/routing/route_names.dart';
import 'package:admin_dashboard/routing/router.dart';
import 'package:admin_dashboard/widgets/header/custom_appbar.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:admin_dashboard/widgets/drawer/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Layouts extends StatelessWidget {
  //  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
   const Layouts({Key? key}) : super(key: key);
   
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
            Expanded(
              flex: 5,
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: DashboardRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
