import 'package:flutter/material.dart';
import 'package:portfolio_f/widgets/LargeScreen.dart';
import 'package:portfolio_f/widgets/SmallScreen.dart';
import 'package:portfolio_f/widgets/top_nav.dart';

import 'helpers/responsiveness.dart';
import 'widgets/side_menu.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
