import 'package:flutter/material.dart';
import 'package:kitsu/pages/homepage.dart';
import 'package:kitsu/pages/login_or_register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.routeName:(context) => LoginOrRegisterPage(),
      },
    );
  }
}