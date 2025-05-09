import 'package:flutter/material.dart';

class AppColors {
  // Light Theme Colors
  static const Color lightPrimary =
      Color(0xFF4CAF50); // Fresh Green (Calm & Professional)
  static const Color lightSecondary =
      Color(0xFFFFC107); // Muted Amber (Vibrant, yet soft)
  static const Color lightBackground = Color(0xFFF5F5F5); // Soft Light Gray
  static const Color lightSurface = Color(0xFFFFFFFF); // White for surface
  static const Color lightText =
      Color(0xFF333333); // Dark Text for contrast on light background

  // Dark Theme Colors
  static const Color darkPrimary =
      Color(0xFF388E3C); // Deep Green for Dark Mode
  static const Color darkSecondary =
      Color(0xFFFFB300); // Amber (Vibrant Accent)
  static const Color darkBackground =
      Color(0xFF121212); // Dark Background for dark mode
  static const Color darkSurface =
      Color(0xFF1E1E1E); // Slightly dark for surface in dark mode
  static const Color darkText =
      Color(0xFFE0E0E0); // Light text on dark background

  // Neutral Colors
  static const Color neutralLight =
      Color(0xFFDCDCDC); // Light Neutral Gray for borders or dividers
  static const Color neutralDark =
      Color(0xFF757575); // Darker Neutral Gray for text in dark theme

  // Error Color
  static const Color error = Color(0xFFF44336); // Red for errors
  static const Color errorText = Color(0xFFFFFFFF); // White text on error

  // Success Color (For positive feedback)
  static const Color success = Color(0xFF4CAF50); // Green for success messages
}
