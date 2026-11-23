import 'package:flutter/material.dart';

class SpaceAppColors {
  static const Color background = Color(0xFF0E0E0E);
  static const Color red = Color(0xFFEE403B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black1 = Color(0x0E0E0E00);
  static const Color black2 = Color(0xFF0E0E0E);
  static  Color gery = Colors.grey.shade800;
  static const Color transparent = Colors.transparent;
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [black1, black2],
  );
}
