import 'package:flutter/material.dart';
import 'package:simple_responsive_mitch_koko/app_constant.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key, required this.mobileLayout, required this.desktopLayout});
  final Widget mobileLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < MOBILE_MAX_WIDTH) {
          return mobileLayout;
        }
        return desktopLayout;
      },
    );
  }
}
