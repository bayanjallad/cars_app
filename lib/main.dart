import 'package:cars_app/core/resources/string.dart';
import 'package:cars_app/core/resources/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/responsive.dart';
import 'core/resources/string_controller.dart';
import 'features/auth/presentation/views/signIn_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefLang = await SharedPreferences.getInstance();

  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initResponsive(context);
    LocalControllerlang controllerlang = Get.put(LocalControllerlang());

    return GetMaterialApp(
        theme: AppTheme().lightTheme,
        darkTheme: AppTheme().darkTheme,
        locale: controllerlang.initLang,
        translations: Strings(),
        debugShowCheckedModeBanner: false,
        home:

       const SignInPage()
      
        );
  }
}
