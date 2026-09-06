import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
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
      title: S.of(context).settingsDarkMode,
      subtitle: isDarkMode
          ? S.of(context).settingsDarkThemeEnabled
          : S.of(context).settingsLightThemeEnabled,
      icon: isDarkMode ? Icons.dark_mode_rounded : Icons.light_mode_rounded,
      trailing: Switch.adaptive(
        value: isDarkMode,
        onChanged: onChanged,
        activeThumbColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
