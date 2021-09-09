import 'package:admin_dashboard/locator.dart';
import 'package:admin_dashboard/provider/app_provider.dart';
import 'package:admin_dashboard/provider/controller.dart';
import 'package:admin_dashboard/routing/route_names.dart';
import 'package:admin_dashboard/routing/router.dart';
import 'package:admin_dashboard/widgets/layouts/layouts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(
    MultiProvider(
    providers: [
    ChangeNotifierProvider.value(value: AppProvider.init()),
    ChangeNotifierProvider(create: (context) => Controller())
    ], 
    child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: generateRoute,
      initialRoute: LoginRoute,
    );
  }
}

class LayoutsApp extends StatelessWidget {
  const LayoutsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Layouts();
  }
}
