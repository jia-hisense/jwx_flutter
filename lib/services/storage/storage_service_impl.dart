import 'dart:convert';

import 'package:jwx_flutter/bloc/models/user.dart';
import 'package:jwx_flutter/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServiceImpl implements StorageService {
  static const sharedPreferencesLocalUserKey = "local_user_key";

  @override
  Future<User> getLocalUser() async {
    String data = await _getStringFromPreferences(sharedPreferencesLocalUserKey);
    if (data==null || data == ''){return null;}
    Map<String, dynamic> map = jsonDecode(data);
    return User.fromJson(map);
  }

  @override
  Future<void> saveLocalUser(User user) async {
    String data = jsonEncode(user.toJson());
    _saveToPreferences(sharedPreferencesLocalUserKey, data);
  }

  Future<void> _saveToPreferences(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<String> _getStringFromPreferences(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return Future<String>.value(prefs.getString(key) ?? '');
  }

}