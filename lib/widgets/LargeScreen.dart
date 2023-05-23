import 'package:flutter/material.dart';

import '../helpers/local_navigator.dart';
import 'side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: localNavigator(),
        )
      ],
    );
  }
}
