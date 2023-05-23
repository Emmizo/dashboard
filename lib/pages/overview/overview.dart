import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_f/constants/controllers.dart';
import 'package:portfolio_f/helpers/responsiveness.dart';

import '../../widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 3 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
