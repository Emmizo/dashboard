import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_f/controllers/navigationController.dart';
import 'package:portfolio_f/helpers/responsiveness.dart';
import 'package:portfolio_f/widgets/side_menu_item.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../routing/routes.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        color: light,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(context))
              Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                  ],
                )
              ]),
            SizedBox(
              height: 40,
            ),
            Divider(
              color: lightGrey.withOpacity(.1),
            ),
            Column(
                mainAxisSize: MainAxisSize.min,
                children: sideMenuItems
                    .map(
                      (itemName) => SideMenuItem(
                          itemName: itemName == AuthenticationPageRoute
                              ? "Log Out"
                              : itemName,
                          onTap: () {
                            if (itemName == AuthenticationPageRoute) {
                              //TODO:: go to authentication page
                            }
                            if (!menuController.isActive(itemName)) {
                              menuController.changeActiveitemTo(itemName);
                              if (ResponsiveWidget.isSmallScreen(context))
                                Get.back();
                              NavigationController().navigateTo(itemName);
                            }
                          }),
                    )
                    .toList())
          ],
        ));
  }
}
