import 'package:flicked/pages/main_page.dart';
import 'package:flicked/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(SplashPage(
    onIntializationComplete: () => runApp(const ProviderScope(child: MyApp())),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flicked',
      initialRoute: 'home',
      routes: {'home': (context) => const MainPage()},
    );
  }
}
