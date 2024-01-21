import 'package:flutter/material.dart';
import 'package:kitsu/widgets/login_page_widget.dart';

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
      return LoginPage(onTap: toggelPages);
    } else {
      return LoginPage(onTap: toggelPages);
    }
  }
}