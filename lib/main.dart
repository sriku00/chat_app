import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chat_app/Screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Supreme chat',
        // ignore: prefer_single_quotes
        home: AnimatedSplashScreen(splash: "assets/images/user_2.png", nextScreen: HomeScreen()));
  }
}
