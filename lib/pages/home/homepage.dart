import 'package:flutter/material.dart';
import 'package:responsividade_page/breakpoints.dart';

import 'widgets/appbar/mobile_appbar.dart';
import 'widgets/appbar/web_appbar.dart';
import 'widgets/sections/advantage_section.dart';
import 'widgets/sections/courses_section.dart';
import 'widgets/sections/top_section.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      //
      bool isMobile = constraint.maxWidth < mobileBreakpoint;
      //
      return Scaffold(
          appBar: PreferredSize(
            child: isMobile ? MobileAppBar() : WebAppBar(),
            preferredSize: Size(double.infinity, isMobile ? 56 : 72),
          ),
          drawer: !isMobile
              ? null
              : Drawer(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Este é o Drawer")),
                ),
          body: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantageSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ));
    });
  }
}
