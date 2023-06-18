import 'package:flutter/material.dart';
import 'package:simple_responsive_mitch_koko/responsive/desktop_layout.dart';
import 'package:simple_responsive_mitch_koko/responsive/mobile_layout.dart';
import 'package:simple_responsive_mitch_koko/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileLayout: MobileLayout(), desktopLayout: DesktopLayout()),
    );
  }
}
