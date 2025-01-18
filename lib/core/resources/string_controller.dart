import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPrefLang;

class LocalControllerlang extends GetxController {
  Locale initLang = sharedPrefLang.getString("Lang") == "ar"
      ? const Locale("ar")
      : const Locale("en");

  void changeLanuge(String codeLan) {
    Locale locale = Locale(codeLan);
    sharedPrefLang.setString("Lang", codeLan);
    Get.updateLocale(locale);
  }
}
