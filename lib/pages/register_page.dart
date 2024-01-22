import 'package:flutter/material.dart';
import 'package:kitsu/widgets/text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  final Function? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
      body:SingleChildScrollView(child: Padding(      
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            const SizedBox(height: 35,),
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 120),
            child: Text(
             'РЕГИСТРАЦИЯ',
             style: TextStyle(fontWeight: FontWeight.bold,
             color: Color.fromRGBO(13, 159, 129, 1),
             fontSize: 15,),
              ),),

            const SizedBox(height: 85,),
            const SizedBox(
            child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
             'Добро пожаловать назад!\nМы скучали',
             textAlign: TextAlign.center,
             style: TextStyle(fontWeight: FontWeight.bold,
             color: Colors.white,
             fontSize: 17),
              ),)
            ),

             Container(
              width: 350,
              height: 350,
              child: Image.asset('assets/logo.png')
              ),

             const TextFieldWidget(),

      ],
      ),
    )
    )
    );
  }
}