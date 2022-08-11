import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
const ChatScreen({Key? key}) : super(key: key);

static String routerName = 'chat';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}