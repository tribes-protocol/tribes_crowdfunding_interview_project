import 'package:flutter/material.dart';

class Coloring {
  // Laser tag red
  static const laserTagReg = Color.fromARGB(255, 246, 9, 9);

  // Mars orange
  static const marsOrange = Color.fromARGB(255, 223, 86, 9);
  // Moon cheese yellow
  static const moonCheeseYellow = Color.fromARGB(255, 246, 223, 10);
  // Ice cold blue
  static const iceColdBlue = Color.fromARGB(255, 24, 125, 243);
  // Touch green grass
  static const touchGreenGrass = Color.fromARGB(255, 53, 163, 77);
  // Luxury purple
  static const luxuryPurple = Color.fromARGB(255, 123, 24, 247);
  // Hawt Salmon
  static const hawtSalmon = Color.fromARGB(255, 255, 84, 155);
  // Night owl black
  static const nightOwlBlack = Color.fromARGB(255, 47, 47, 47);
  // Winter white
  static const winterWhite = Colors.white;
  // Grey 70
  static const grey70 = labelLight2;
  // White 70
  static const white70p = labelDark2;
  // Black 13% opacity
  static const black25p = labelLight3;

  static final black50p = Colors.black.withOpacity(0.50);
  static final black08p = Colors.black.withOpacity(0.08);
  static const okayColor = Color.fromARGB(255, 86, 184, 107);

  static const errorColor = Color.fromARGB(255, 246, 9, 9);
  static const indicatorColor = Color.fromARGB(255, 0, 122, 255);
  static final red50p = errorColor.withOpacity(0.50);
  static const webCardBackgroundColor = labelLight6;
  static const twitterCardBackgroundColor = Color.fromARGB(30, 29, 155, 240);
  static const separatorColor = labelLight5;
  static const baseNavigationBarColor = baseNavLight;
  static const textEntitySymbolColor = Color.fromARGB(255, 85, 85, 85);
  // New color system for us to move towards

  // Base colors (opaque, used as backgrounds)
  /// Light
  static const baseNavLight = Color.fromARGB(255, 235, 235, 235);
  static const baseContentLight = Color.fromARGB(255, 255, 255, 255);

  /// Dark
  static const baseNavDark = Color.fromARGB(255, 26, 26, 26);
  static const baseContentDark = Color.fromARGB(255, 32, 32, 32);

  // Label colors  (semi-opaque, used as gradiated color of white/black)

  /// onLight
  static const labelLight1text = Color.fromARGB(255, 26, 26, 26);
  static const labelLight2text = Color.fromARGB(255, 102, 102, 102);
  static const labelLight1 = Color.fromARGB(230, 0, 0, 0);
  static const labelLight2 = Color.fromARGB(153, 0, 0, 0);
  static const labelLight3 = Color.fromARGB(77, 0, 0, 0);
  static const labelLight4 = Color.fromARGB(38, 0, 0, 0);
  static const labelLight5 = Color.fromARGB(20, 0, 0, 0);
  static const labelLight6 = Color.fromARGB(10, 0, 0, 0);

  /// onDark
  static const labelDark1text = Color.fromARGB(255, 255, 255, 255);
  static const labelDark2text = Color.fromARGB(255, 161, 161, 161);
  static const labelDark1 = Color.fromARGB(230, 255, 255, 255);
  static const labelDark2 = Color.fromARGB(153, 255, 255, 255);
  static const labelDark3 = Color.fromARGB(77, 255, 255, 255);
  static const labelDark4 = Color.fromARGB(38, 255, 255, 255);
  static const labelDark5 = Color.fromARGB(20, 255, 255, 255);
  static const labelDark6 = Color.fromARGB(10, 255, 255, 255);

  /// Style use case colors
  static const header1 = labelLight1text;
  static const header2 = labelLight1text;
  static const header3 = labelLight1text;
  static const header4 = labelLight1text;
  static const header45 = labelLight1text;
  static const header5 = labelLight1text;
  static const body = labelLight1text;
  static const secondary = labelLight2text;
  static const caption = labelLight2text;
  static const unread = Color.fromARGB(204, 235, 245, 255);

  // brand colors
  static const coinbaseBackground = Color.fromARGB(255, 70, 113, 236);

  Coloring._();
}
