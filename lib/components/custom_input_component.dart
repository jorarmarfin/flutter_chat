import 'package:flutter/material.dart';

import '../themes/default_theme.dart';

class CustomInputComponent extends StatelessWidget {
  const CustomInputComponent(
      {Key? key,
      required this.icon,
      required this.placeholder,
      required this.textController,
      this.tipo = TextInputType.text,
      this.isPassword = false})
      : super(key: key);
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType tipo;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 2, left: 5, bottom: 2, right: 20),
      decoration: boxRecuadro(Colors.white, 30.0),
      child: TextField(
        autocorrect: false,
        controller: textController,
        obscureText: isPassword,
        keyboardType: tipo,
        style: const TextStyle(color: Colors.blue, fontSize: 20),
        decoration: InputDecoration(
            prefix: Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Icon(
                icon,
                size: 20,
                color: colorPrincipal,
              ),
            ),
            border: InputBorder.none,
            hintText: placeholder),
      ),
    );
  }
}
