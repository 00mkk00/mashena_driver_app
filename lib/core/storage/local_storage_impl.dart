import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {
  final SharedPreferences _prefs;

  LocalStorageImpl(this._prefs);

  @override
  Future<bool> setBool(String key, bool value) async {
    try {
      return await _prefs.setBool(key, value);
    } catch (e) {
      return false;
    }
  }

  @override
  bool? getBool(String key) {
    try {
      return _prefs.getBool(key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> setString(String key, String value) async {
    try {
      return await _prefs.setString(key, value);
    } catch (e) {
      return false;
    }
  }

  @override
  String? getString(String key) {
    try {
      return _prefs.getString(key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> setInt(String key, int value) async {
    try {
      return await _prefs.setInt(key, value);
    } catch (e) {
      return false;
    }
  }

  @override
  int? getInt(String key) {
    try {
      return _prefs.getInt(key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> remove(String key) async {
    try {
      return await _prefs.remove(key);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> clear() async {
    try {
      return await _prefs.clear();
    } catch (e) {
      return false;
    }
  }

  @override
  bool containsKey(String key) {
    return _prefs.containsKey(key);
  }
}
