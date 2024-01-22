import 'package:flutter/material.dart';
import 'package:kitsu/pages/login_page.dart';
import 'package:kitsu/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});
  static const routeName = '/home-page';

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPage();
}

class _LoginOrRegisterPage extends State<LoginOrRegisterPage> {
    bool showLoginPage = true;

  void toggelPages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return RegisterPage(onTap: toggelPages);
    } else {
      return LoginPage(onTap: toggelPages);
    }
  }
}