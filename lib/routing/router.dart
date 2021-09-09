import 'package:admin_dashboard/main.dart';
import 'package:admin_dashboard/pages/auth/login_page.dart';
import 'package:admin_dashboard/pages/dashbaord_page.dart';
import 'package:admin_dashboard/pages/produits/achats/achats_page.dart';
import 'package:admin_dashboard/pages/produits/ventes/vente_page.dart';
import 'package:admin_dashboard/pages/users/users_page.dart';
import 'package:admin_dashboard/routing/route_names.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardRoute:
      return _getPageRoute(const DashboardPage());
    case LoginRoute:
      return _getPageRoute(const LoginPage());
    case UserRoute:
      return _getPageRoute(const UsersPage());
    case VenteRoute:
      return _getPageRoute(const VentePage());
    case AchatRoute:
      return _getPageRoute(const AchatPage());
    case LayoutRoute:
      return _getPageRoute(const LayoutsApp());
    default:
      return _getPageRoute(const LoginPage());
  }
}


PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
