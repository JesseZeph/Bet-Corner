import 'package:bet_corner/controllers/purchase_api.dart';
import 'package:bet_corner/pages/auth_page.dart';
import 'package:bet_corner/pages/splash_screen.dart';
import 'package:bet_corner/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await PurchaseApi.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home:  SplashScreen(),
    );
  }
}
