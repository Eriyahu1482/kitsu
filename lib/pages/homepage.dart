import 'package:flutter/material.dart';
import 'package:kitsu/widgets/homepage_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: HomePageWidget(),
      );
  }
}