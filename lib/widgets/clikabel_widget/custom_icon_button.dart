import 'package:flutter/material.dart';

import '../../helpers/consts.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.color,
  });
  final Function onPressed;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var widget;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              border: Border.all(color: mainColor.withOpacity(0.15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, color: color),
            ),
          ),
        ),
      ],
    );
  }
}
