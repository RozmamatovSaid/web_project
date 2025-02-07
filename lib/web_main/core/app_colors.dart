import 'package:flutter/material.dart';

class CyberpunkColors {
  // Asosiy cyberpunk ranglar
  static const Color neonPink = Color(0xFFFF007F); // Neon pushti
  static const Color neonBlue = Color(0xFF00FFFF); // Neon ko'k
  static const Color neonGreen = Color(0xFF39FF14); // Neon yashil
  static const Color neonYellow = Color(0xFFFFFF00); // Neon sariq
  static const Color neonOrange = Color(0xFFFFA500); // Neon to'q sariq
  static const Color neonPurple = Color(0xFF8A2BE2); // Neon binafsha

  // Qorong'i fonlar
  static const Color darkPurple = Color(0xFF2D004D);
  static const Color deepBlack = Color(0xFF000814);

  // Matn uchun cyberpunk ranglar
  static const Color textGlow = Color(0xFFFFE600); // Yaltiroq sariq
  static const Color textNeon = Color(0xFF00FFC6); // Neon ko'k-yashil

  // Cyberpunk gradientlar
  static const Gradient cyberpunkGradient = LinearGradient(
    colors: [darkPurple, deepBlack, deepBlack],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const Gradient cyberpunkGradientBar = LinearGradient(
    colors: [CyberpunkColors.neonBlue, deepBlack, deepBlack],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
