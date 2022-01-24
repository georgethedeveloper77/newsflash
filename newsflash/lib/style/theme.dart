import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colors {
  const Colors();

  static const Color mainColor = const Color(0x000000);
  static const Color secondColor = const Color(0xFFF6511D);
  static const Color grey = const Color(0x808080);
  static const Color background = const Color(0xADD8E6);
  static const Color titleColor = const Color(0xFF061857);
  static const primaryGradient = const LinearGradient(
    colors: const [Color(0x000000), Color(0x000000)],
    stops: const [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
