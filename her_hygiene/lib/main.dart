import 'package:flutter/material.dart';
import 'package:her_hygiene/Assessment%20Test/self_test.dart';
import './home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'self_test',
      routes: {
        'home_screen': (context) => const HomeScreen(),
        'self_test': (context) => const SelfTestScreen(),
      },
      /* home: SelfTestScreen(), */
    );
  }
}
