import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  // Modern gradient colors
  static const Color primary = Color(0xFF6366F1); // Indigo
  static const Color primaryDark = Color(0xFF4F46E5);
  static const Color secondary = Color(0xFF06B6D4); // Cyan
  static const Color accent = Color(0xFFEC4899); // Pink

  // Light theme colors
  static const Color _backgroundLight = Color(0xFFF8FAFC);
  static const Color _surfaceLight = Colors.white;
  static const Color _textPrimaryLight = Color(0xFF0F172A);
  static const Color _textSecondaryLight = Color(0xFF64748B);
  static const Color _textHintLight = Color(0xFF94A3B8);
  static const Color _borderLight = Color(0xFFE2E8F0);
  static const Color _shadowLight = Color(0x0F000000);

  // Dark theme colors
  static const Color _backgroundDark = Color(0xFF0F172A);
  static const Color _surfaceDark = Color(0xFF1E293B);
  static const Color _textPrimaryDark = Color(0xFFF1F5F9);
  static const Color _textSecondaryDark = Color(0xFF94A3B8);
  static const Color _textHintDark = Color(0xFF64748B);
  static const Color _borderDark = Color(0xFF334155);
  static const Color _shadowDark = Color(0x1A000000);

  // Status colors (same for both themes)
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // Dynamic colors based on theme
  static Color get background =>
      Get.isDarkMode ? _backgroundDark : _backgroundLight;
  static Color get surface => Get.isDarkMode ? _surfaceDark : _surfaceLight;
  static Color get textPrimary =>
      Get.isDarkMode ? _textPrimaryDark : _textPrimaryLight;
  static Color get textSecondary =>
      Get.isDarkMode ? _textSecondaryDark : _textSecondaryLight;
  static Color get textHint => Get.isDarkMode ? _textHintDark : _textHintLight;
  static Color get border => Get.isDarkMode ? _borderDark : _borderLight;
  static Color get shadow => Get.isDarkMode ? _shadowDark : _shadowLight;
  static Color get shadowDark =>
      Get.isDarkMode ? Color(0x3A000000) : Color(0x1A000000);

  // Additional colors
  static const Color textLight = Color(0xFFCBD5E1);
  static const Color divider = Color(0xFFF1F5F9);

  // Gradient definitions
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [secondary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get cardGradient => LinearGradient(
    colors: Get.isDarkMode
        ? [_surfaceDark, Color(0xFF334155)]
        : [Colors.white, Color(0xFFFAFBFC)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
