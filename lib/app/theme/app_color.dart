import 'package:flutter/material.dart';

class AppColor {
  /// PRIMARY BRAND COLORS
  static const Color primary = Color(0xFF1E3A8A);
  static const Color primaryDark = Color(0xFF172554);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color highLight = Color(0xFF93C5FD);

  /// SECONDARY / INVESTMENT COLORS
  static const Color secondary = Color(0xFF10B981); // Emerald
  static const Color secondaryDark = Color(0xFF059669);
  static const Color secondaryLight = Color(0xFF34D399);

  /// ACCENT COLORS
  static const Color accent = Color(0xFF6366F1); // Indigo
  static const Color accentLight = Color(0xFF818CF8);

  /// GRADIENTS
  static const Color gradientStart = primary;
  static const Color gradientEnd = accent;

  /// BASE COLORS
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;

  /// LIGHT THEME
  static const Color lightSurface = Color(0xFFF8FAFC);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF0F172A);
  static const Color lightTextSecondary = Color(0xFF64748B);

  /// DARK THEME
  static const Color darkSurface = Color(0xFF0B1120);
  static const Color darkCard = Color(0xFF1E293B);
  static const Color darkSecondarySurface = Color(0xFF334155);
  static const Color darkText = Color(0xFFF8FAFC);
  static const Color darkTextSecondary = Color(0xFFCBD5E1);

  /// NEUTRALS
  static const Color grey = Color(0xFF64748B);
  static const Color lightGrey = Color(0xFFE2E8F0);
  static const Color darkGrey = Color(0xFF475569);

  /// STATUS COLORS
  static const Color red = Color(0xFFEF4444);
  static const Color green = Color(0xFF10B981);
  static const Color orangeAccent = Color(0xFFF59E0B);

  /// RISK COLORS
  static const Color lowRisk = Color(0xFF10B981);
  static const Color mediumRisk = Color(0xFFF59E0B);
  static const Color highRisk = Color(0xFFEF4444);

  /// INFO COLORS
  static const Color blue = Color(0xFF3B82F6);
  static const Color blueAccent = Color(0xFF60A5FA);

  /// BRAND GRADIENT
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [gradientStart, gradientEnd],
  );

  /// ROI GRADIENT
  static const LinearGradient roiGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, secondaryLight],
  );
}
