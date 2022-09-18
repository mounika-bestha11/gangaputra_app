import 'package:app/responsive/mobile_screen_layout.dart';
import 'package:app/responsive/responsive_layout.dart';
import 'package:app/responsive/web_screen_layout.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyDsU0f0H1t6J6bxJKd8cu2kcU-lPely0P0",
      appId: "1:386078821744:web:17bb5f8a3f7935d5dc93b5",
      messagingSenderId: "386078821744",
      projectId: "gangaputra-app",
      storageBucket: "gangaputra-app.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }
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
