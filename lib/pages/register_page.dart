import 'package:flutter/material.dart';
import 'package:kitsu/widgets/button_widget.dart';
import 'package:kitsu/widgets/text_field_item_widget.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/reg-page';

  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nicknameController = TextEditingController();

  late String _nickname;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     'РЕГИСТРАЦИЯ',
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         color: Color.fromRGBO(13, 159, 129, 1),
      //         fontSize: 15),
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              const Text(
                'РЕГИСТРАЦИЯ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(13, 159, 129, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 85,
              ),
              const SizedBox(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Добро пожаловать назад!\nМы скучали',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17),
                ),
              )),
              Container(
                  width: 200,
                  height: 200,
                   decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/logo.png'),
                    fit: BoxFit.fill),
                    ),
                    ),
                    const SizedBox(height: 100),
                    TextFieldWidget(controller: _emailController,
               hintText: 'Введите имя',
                icon: const Icon(Icons.email, color: Color.fromRGBO(2, 217, 173, 1)),
              ),
              const SizedBox(height: 20),
              TextFieldWidget(controller: _nicknameController,
               hintText: 'Введите Email',
                icon: const Icon(Icons.email, color: Color.fromRGBO(2, 217, 173, 1)),
              ),
              const SizedBox(height: 20),
              TextFieldWidget(controller: _passwordController,
               hintText: 'Введите пароль',
                icon: const Icon(Icons.lock, color: Color.fromRGBO(2, 217, 173, 1)),
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                buttonName: 'СТАТЬ ЛИСОМ',
                buttonColor: const Color.fromRGBO(2, 217, 173, 1),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
