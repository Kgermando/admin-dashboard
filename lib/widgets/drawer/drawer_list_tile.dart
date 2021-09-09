import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, 
      required this.active, required this.tap, required this.icon})
      : super(key: key);

  final String title;
  final VoidCallback tap;
  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: active ? Colors.green : Colors.white,
      onTap: tap,
      horizontalTitleGap: 0.0,
      leading: Icon(icon, color: Colors.blue),
      title: CustomText(
        text: title,
        color: Colors.blue,
        size: active ? 23 : 18,
        weight: active ? FontWeight.bold : FontWeight.w300,
      ),
    );
  }
}
