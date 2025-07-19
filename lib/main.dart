import 'package:flutter/material.dart';
import 'package:responsive_dashboard/adaptive_layout.dart';
import 'package:responsive_dashboard/view/desktop_layout/desktop_layout.dart';
import 'package:responsive_dashboard/view/mobile_layout/mobile_layout.dart';
import 'package:responsive_dashboard/view/tablet_layout/tablet_layput.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ReseponsiveDashBoard(),
    );
  }
}

class ReseponsiveDashBoard extends StatelessWidget {
  const ReseponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Adabtivelayout(
            mobileLayout: (context) => MobileLayout(),
            tabletLayout: (context) => TabletLayout(),
            desktopLayout: (context) => DesktopLayout()));
  }
}
