import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/view/desktop_layout/desktop_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 5, child: DesktopBody()),
      ],
    );
  }
}
