import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  final LocalStorage _localStorage;
  static const String _key = 'app_theme_mode';

  ThemeCubit(this._localStorage) : super(ThemeMode.system) {
    _loadSavedTheme();
  }

  void _loadSavedTheme() {
    final saved = _localStorage.getString(_key);
    if (saved == 'dark') {
      emit(ThemeMode.dark);
    } else if (saved == 'light') {
      emit(ThemeMode.light);
    } else {
      emit(ThemeMode.system);
    }
  }

  Future<void> updateThemeMode(ThemeMode mode) async {
    final modeStr = mode == ThemeMode.dark
        ? 'dark'
        : mode == ThemeMode.light
        ? 'light'
        : 'system';
    await _localStorage.setString(_key, modeStr);
    emit(mode);
  }

  Future<void> toggleTheme(bool isDark) async {
    await updateThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}
