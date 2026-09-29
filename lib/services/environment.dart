import 'dart:developer';

import '../config.dart';

String apiUrl = "https://trvna.com/api";
String paymentUrl = "https://trvna.com"; //

String playstoreUrl =
    "https://play.google.com/store/apps/details?id=com.trvna.customer";

String userAppPlayStoreUrl =
    "https://play.google.com/store/apps/details?id=com.trvna.customer";

late SharedPreferences sharedPreferences;
String local = appSettingModel!.general!.defaultLanguage!.locale!;

// Initialize SharedPreferences and Locale
Future<void> initializeAppSettings() async {
  sharedPreferences = await SharedPreferences.getInstance();
  local = sharedPreferences.getString('s') ?? 'en';
  log("set language:: $local");
}

// Headers Token Function
Map<String, String>? headersToken(String? token) => {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      "Accept-Lang": local,
      "Authorization": "Bearer $token",
    };

// Default Headers
Map<String, String>? get headers => {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      "Accept-Lang": local,
    };
