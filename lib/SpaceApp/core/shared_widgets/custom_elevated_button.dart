// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../theming/colors/space_app_colors.dart';

typedef ButtonOnPressed = void Function();

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  String buttonText;
  ButtonOnPressed onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: SpaceAppColors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                color: SpaceAppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_forward_outlined,
              size: 25,
              color: SpaceAppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
