import 'package:flutter/material.dart';

enum AppBackgroundOption {
  pure,
  mint,
  peach,
  sky,
  lavender,
  emerald,
  pitchBlack;

  String get label {
    switch (this) {
      case AppBackgroundOption.pure:
        return 'Pure Clean';
      case AppBackgroundOption.mint:
        return 'Soft Mint';
      case AppBackgroundOption.peach:
        return 'Cozy Peach';
      case AppBackgroundOption.sky:
        return 'Ocean Sky';
      case AppBackgroundOption.lavender:
        return 'Midnight Lavender';
      case AppBackgroundOption.emerald:
        return 'Emerald Forest';
      case AppBackgroundOption.pitchBlack:
        return 'Pitch Black (OLED)';
    }
  }

  String get subtitle {
    switch (this) {
      case AppBackgroundOption.pure:
        return 'Classic soft neutral layout';
      case AppBackgroundOption.mint:
        return 'Refreshing mint green glow';
      case AppBackgroundOption.peach:
        return 'Warm & comforting pastel peach';
      case AppBackgroundOption.sky:
        return 'Serene & tranquil sky blue';
      case AppBackgroundOption.lavender:
        return 'Calming & mindful purple tint';
      case AppBackgroundOption.emerald:
        return 'Rich botanical green vibe';
      case AppBackgroundOption.pitchBlack:
        return 'Ultra high-contrast true black';
    }
  }

  Color get primaryAccent {
    switch (this) {
      case AppBackgroundOption.pure:
        return const Color(0xFF7ED3B2);
      case AppBackgroundOption.mint:
        return const Color(0xFF10B981);
      case AppBackgroundOption.peach:
        return const Color(0xFFF97316);
      case AppBackgroundOption.sky:
        return const Color(0xFF0EA5E9);
      case AppBackgroundOption.lavender:
        return const Color(0xFF8B5CF6);
      case AppBackgroundOption.emerald:
        return const Color(0xFF059669);
      case AppBackgroundOption.pitchBlack:
        return const Color(0xFF10B981);
    }
  }

  Color lightScaffoldBg(Color defaultLight) {
    switch (this) {
      case AppBackgroundOption.pure:
        return defaultLight; // #F6F7FB
      case AppBackgroundOption.mint:
        return const Color(0xFFE8F6F0);
      case AppBackgroundOption.peach:
        return const Color(0xFFFDF2EE);
      case AppBackgroundOption.sky:
        return const Color(0xFFEFF7FC);
      case AppBackgroundOption.lavender:
        return const Color(0xFFF4F1FA);
      case AppBackgroundOption.emerald:
        return const Color(0xFFEBF5F0);
      case AppBackgroundOption.pitchBlack:
        return defaultLight;
    }
  }

  Color lightSurface(Color defaultSurface) {
    return defaultSurface; // #FFFFFF
  }

  Color darkScaffoldBg(Color defaultDark) {
    switch (this) {
      case AppBackgroundOption.pure:
        return defaultDark; // #121824
      case AppBackgroundOption.mint:
        return const Color(0xFF0D201A);
      case AppBackgroundOption.peach:
        return const Color(0xFF221714);
      case AppBackgroundOption.sky:
        return const Color(0xFF101B26);
      case AppBackgroundOption.lavender:
        return const Color(0xFF181524);
      case AppBackgroundOption.emerald:
        return const Color(0xFF0A1C14);
      case AppBackgroundOption.pitchBlack:
        return const Color(0xFF000000);
    }
  }

  Color darkSurface(Color defaultDarkSurface) {
    switch (this) {
      case AppBackgroundOption.pure:
        return defaultDarkSurface; // #1E2638
      case AppBackgroundOption.mint:
        return const Color(0xFF162D25);
      case AppBackgroundOption.peach:
        return const Color(0xFF2E201C);
      case AppBackgroundOption.sky:
        return const Color(0xFF182736);
      case AppBackgroundOption.lavender:
        return const Color(0xFF221E33);
      case AppBackgroundOption.emerald:
        return const Color(0xFF12291E);
      case AppBackgroundOption.pitchBlack:
        return const Color(0xFF121212);
    }
  }
}
