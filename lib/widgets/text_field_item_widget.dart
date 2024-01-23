import 'package:flutter/material.dart';
import 'package:kitsu/widgets/alert_dialog_heper.dart';

class TextFieldWidget1 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  final bool isObsText;
  final TextInputType inputType;

  const TextFieldWidget1(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      this.isObsText = false,
      this.inputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
        cursorColor: const Color.fromRGBO(2, 217, 173, 1),
        controller: controller,
        obscureText: isObsText,
        keyboardType: inputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Введите $hintText';
          }
        if (hintText == 'Актуальный email' && !validateEmail(value)) {
            return 'Введите коректный email';
        }
        return null;
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Color.fromRGBO(2, 217, 173, 1), width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          ),
           borderSide: BorderSide(color: Color.fromRGBO(2, 217, 173, 1), width: 2),
        ),
        hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white30,
                  fontWeight: FontWeight.w500),
          prefixIcon: icon,
          hintText: hintText,
          labelText: hintText,
          fillColor: Colors.transparent,
          filled: true,
        ),
      ),
    );
    
  }
}
