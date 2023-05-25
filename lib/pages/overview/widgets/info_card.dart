import 'package:flutter/material.dart';

import '../../../constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback onTap;

  const InfoCard(
      {super.key,
      required this.title,
      required this.value,
      required this.topColor,
      required this.onTap,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            height: 136,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 6),
                    color: lightGrey.withOpacity(.1),
                  ),
                ],
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                      child: Container(
                    height: 5,
                  ))
                ])
              ],
            )),
      ),
    );
  }
}
