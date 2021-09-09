import 'package:admin_dashboard/constants/constants.dart';
import 'package:admin_dashboard/constants/responsive.dart';
import 'package:admin_dashboard/provider/controller.dart';
import 'package:admin_dashboard/screens/components/profile_info.dart';
import 'package:admin_dashboard/screens/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<Controller>().controlMenu,
            icon: Icon(Icons.menu,color: textColor.withOpacity(0.5),),
          ),
        const Expanded(child: SearchField()),
        const ProfileInfo()
      ],
    );
  }
}
