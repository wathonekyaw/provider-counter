import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch(
      value: themeProvider.isDark,
      onChanged: (value) {
        themeProvider.toggleTheme();
      },
    );
  }
}
