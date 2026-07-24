import 'package:flutter/material.dart';
import 'setting_item_card.dart';

class ThemeToggleCard extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onChanged;

  const ThemeToggleCard({
    super.key,
    required this.isDarkMode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SettingItemCard(
      title: 'Dark Mode',
      subtitle: isDarkMode ? 'Dark theme enabled' : 'Light theme enabled',
      icon: isDarkMode ? Icons.dark_mode_rounded : Icons.light_mode_rounded,
      trailing: Switch.adaptive(
        value: isDarkMode,
        onChanged: onChanged,
        activeThumbColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
