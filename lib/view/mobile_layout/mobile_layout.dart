import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/tablet_layout/tablet_layput.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TabletAndMobileLayoutBody(),
      ),
    );
  }
}
