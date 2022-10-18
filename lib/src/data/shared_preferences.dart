import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {

  static final Future<SharedPreferences> _preferences = SharedPreferences.getInstance();

  static isLoggedIn(bool status) async {
    final prefs = await _preferences;
    await prefs.setBool('status', true);
    log('is logged in: ${prefs.getBool('status')}');
  }

  static Future<bool?> getStatus() async {
    final prefs = await _preferences;
    return prefs.getBool('status');
  }

  static isLoggedOut() async {
    final prefs = await _preferences;
    await prefs.remove('status');
  }
}