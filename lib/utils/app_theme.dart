import 'package:flutter/material.dart';

class AppTheme {
  static const Color darkBlue = Color(0xFF161622);
  static const Color darkBlue2 = Color(0xFF1F3A58);
  static const Color darkBlue3 = Color(0xFF1E1E2D);
  static const Color ginger = Color(0xFFEC7406);
  static const Color systemRed = Color(0xFFFF0000);
  static const Color systemBlue = Color(0xFF007AFF);
  static const Color emerald = Color(0xFF40CBD4);

  static const LinearGradient gradient1 = LinearGradient(
    colors: [
      darkBlue,
      darkBlue2,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
