import 'package:app/responsive/mobile_screen_layout.dart';
import 'package:app/responsive/responsive_layout.dart';
import 'package:app/responsive/web_screen_layout.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'gangaputra computers',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
      // A widget which will be started on application startup
    );
  }
}
