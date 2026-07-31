import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';

class LocaleCubit extends Cubit<Locale> {
  final LocalStorage _localStorage;

  LocaleCubit(this._localStorage) : super(const Locale('en')) {
    _loadSavedLocale();
  }

  void _loadSavedLocale() {
    final saved = _localStorage.getString('app_locale');
    if (saved != null) {
      emit(Locale(saved));
    } else {
      final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
      if (deviceLocale.languageCode == 'ar') {
        emit(const Locale('ar'));
      } else {
        emit(const Locale('en'));
      }
    }
  }

  Future<void> changeLanguage(String languageCode) async {
    await _localStorage.setString('app_locale', languageCode);
    emit(Locale(languageCode));
  }
}
