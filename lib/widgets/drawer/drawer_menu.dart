import 'package:admin_dashboard/constants/constants.dart';
import 'package:admin_dashboard/locator.dart';
import 'package:admin_dashboard/provider/app_provider.dart';
import 'package:admin_dashboard/routing/route_names.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:admin_dashboard/widgets/drawer/drawer_list_tile.dart';
import 'package:admin_dashboard/widgets/enum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(appPadding),
            child: Image.asset("assets/images/logowithtext.png"),
          ),
          DrawerListTile(
              title: 'Dash Board',
              icon: Icons.dashboard,
              active: appProvider.currentPage == DisplayPage.dashboard,
              tap: () {
                appProvider.changeCurrentPage(DisplayPage.dashboard);
                locator<NavigationService>().navigateTo(DashboardRoute);
              },
          ),
          DrawerListTile(
            title: 'Users',
            icon: Icons.people,
            active: appProvider.currentPage == DisplayPage.users,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.users);
              locator<NavigationService>().navigateTo(UserRoute);
            },
          ),
          DrawerListTile(
            title: 'Achats',
            icon: Icons.shopping_cart,
            active: appProvider.currentPage == DisplayPage.achat,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.achat);
              locator<NavigationService>().navigateTo(AchatRoute);
            },
          ),
          DrawerListTile(
            title: 'Ventes',
            icon: Icons.shopping_cart,
            active: appProvider.currentPage == DisplayPage.vente,
            tap: () {
              appProvider.changeCurrentPage(DisplayPage.vente);
              locator<NavigationService>().navigateTo(VenteRoute);
            },
          ),
        ],
      ),
    );
  }
}
