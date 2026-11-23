import 'package:flutter/material.dart';

import '../../core/theming/colors/space_app_colors.dart';

class CircleArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double padding;

  const CircleArrowButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.padding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: SpaceAppColors.red,
        foregroundColor: SpaceAppColors.white,
        elevation: 0,
        shape: const CircleBorder(),
        padding: EdgeInsets.all(padding),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Icon(icon, size: 22, color: SpaceAppColors.white),
    );
  }
}
