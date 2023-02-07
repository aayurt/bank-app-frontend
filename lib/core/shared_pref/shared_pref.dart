import 'dart:convert';

import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  // Store token
  static Future<bool> storeToken(String key, String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, token);
  }

  static Future<bool> clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(SharedPrefKey.userData, "");
    prefs.setString(SharedPrefKey.allUser, "");

    return prefs.clear();
  }

// Get token
  static Future<String> getToken(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  // static String token = "token";

  static Future<UserModel> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userString = prefs.getString(SharedPrefKey.userData);

    return UserModel.fromJson(json.decode(userString ?? "{}"));
  }

  static Future<List<UserModel>> getAllUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userString = prefs.getString(SharedPrefKey.allUser);

    if (userString != null && userString.isNotEmpty) {
      return List<UserModel>.from(json
          .decode(userString ?? "{}")
          .map((post) => UserModel.fromJson(post)));
    }
    return [];
  }
}

class SharedPrefKey {
  static String token = "token";
  static String userData = "userData";
  static String allUser = "allUser";
}
