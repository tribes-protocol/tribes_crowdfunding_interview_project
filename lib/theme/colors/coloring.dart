import 'package:flutter/material.dart';

class Coloring {
  // Laser tag red
  static final laserTagReg = Color.fromARGB(255, 246, 9, 9);

  // Mars orange
  static final marsOrange = Color.fromARGB(255, 223, 86, 9);
  // Moon cheese yellow
  static final moonCheeseYellow = Color.fromARGB(255, 246, 223, 10);
  // Ice cold blue
  static final iceColdBlue = Color.fromARGB(255, 24, 125, 243);
  // Touch green grass
  static final touchGreenGrass = Color.fromARGB(255, 53, 163, 77);
  // Luxury purple
  static final luxuryPurple = Color.fromARGB(255, 123, 24, 247);
  // Hawt Salmon
  static final hawtSalmon = Color.fromARGB(255, 255, 84, 155);
  // Night owl black
  static final nightOwlBlack = Color.fromARGB(255, 47, 47, 47);
  // Winter white
  static final winterWhite = Colors.white;
  // Grey 70
  static final grey70 = labelLight2;
  // White 70
  static final white70p = labelDark2;
  // Black 13% opacity
  static final black25p = labelLight3;

  static final black50p = Colors.black.withOpacity(0.50);
  static final black08p = Colors.black.withOpacity(0.08);
  static final okayColor = Color.fromARGB(255, 86, 184, 107);

  static final errorColor = Color.fromARGB(255, 246, 9, 9);
  static final indicatorColor = Color.fromARGB(255, 0, 122, 255);
  static final red50p = errorColor.withOpacity(0.50);
  static final webCardBackgroundColor = labelLight6;
  static final twitterCardBackgroundColor = Color.fromARGB(30, 29, 155, 240);
  static final separatorColor = labelLight5;
  static final baseNavigationBarColor = baseNavLight;
  static final textEntitySymbolColor = Color.fromARGB(255, 85, 85, 85);
  // New color system for us to move towards

  // Base colors (opaque, used as backgrounds)
  /// Light
  static final baseNavLight = Color.fromARGB(255, 235, 235, 235);
  static final baseContentLight = Color.fromARGB(255, 255, 255, 255);

  /// Dark
  static final baseNavDark = Color.fromARGB(255, 26, 26, 26);
  static final baseContentDark = Color.fromARGB(255, 32, 32, 32);

  // Label colors  (semi-opaque, used as gradiated color of white/black)

  /// onLight
  static final labelLight1text = Color.fromARGB(255, 26, 26, 26);
  static final labelLight2text = Color.fromARGB(255, 102, 102, 102);
  static final labelLight1 = Color.fromARGB(230, 0, 0, 0);
  static final labelLight2 = Color.fromARGB(153, 0, 0, 0);
  static final labelLight3 = Color.fromARGB(77, 0, 0, 0);
  static final labelLight4 = Color.fromARGB(38, 0, 0, 0);
  static final labelLight5 = Color.fromARGB(20, 0, 0, 0);
  static final labelLight6 = Color.fromARGB(10, 0, 0, 0);

  /// onDark
  static final labelDark1text = Color.fromARGB(255, 255, 255, 255);
  static final labelDark2text = Color.fromARGB(255, 161, 161, 161);
  static final labelDark1 = Color.fromARGB(230, 255, 255, 255);
  static final labelDark2 = Color.fromARGB(153, 255, 255, 255);
  static final labelDark3 = Color.fromARGB(77, 255, 255, 255);
  static final labelDark4 = Color.fromARGB(38, 255, 255, 255);
  static final labelDark5 = Color.fromARGB(20, 255, 255, 255);
  static final labelDark6 = Color.fromARGB(10, 255, 255, 255);

  /// Style use case colors
  static final header1 = labelLight1text;
  static final header2 = labelLight1text;
  static final header3 = labelLight1text;
  static final header4 = labelLight1text;
  static final header45 = labelLight1text;
  static final header5 = labelLight1text;
  static final body = labelLight1text;
  static final secondary = labelLight2text;
  static final caption = labelLight2text;
  static final unread = Color.fromARGB(204, 235, 245, 255);

  // brand colors
  static final coinbaseBackground = Color.fromARGB(255, 70, 113, 236);

  Coloring._();
}
