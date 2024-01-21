import 'package:flutter/material.dart';
import 'package:kitsu/pages/login_or_register_page.dart';
import 'package:kitsu/widgets/button_widget.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(      
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

            const SizedBox(height: 170,),

             Container(
              width: 350,
              height: 350,
              child: Image.asset('assets/logo.png')
              ),

              const SizedBox(height: 40,),

              const Text(
             '     ОБМЕНИВАЙТЕСЬ НАВЫКАМИ',
             textAlign: TextAlign.center,
             style: TextStyle(fontWeight: FontWeight.bold,
             color: Colors.white,
             fontSize: 17),
              ),

              const SizedBox(height: 15,),

              const Text(
             'Овлайдейте навыками и станьте наставником',
             textAlign: TextAlign.center,
             style: TextStyle(
             color: Colors.white,
             fontSize: 16,
             fontWeight: FontWeight.w200,),
              ),
              const SizedBox(height: 70,),
        ButtonWidget(
          buttonName:'НАЧАТЬ',
          buttonColor: const Color.fromRGBO(2, 217, 173, 1),
          onTap:()
          {
            Navigator.of(context).pushNamed(LoginOrRegisterPage.routeName);
          }, 
          ),
              const SizedBox(height: 10,),
          ButtonWidget(
          buttonName:'У МЕНЯ УЖЕ ЕСТЬ АККАУНТ',
          buttonColor: const Color.fromRGBO(36, 36, 36, 1),
          onTap:()
          {
            
          }, 
          ),
      ],
      ),
    );
  }
}