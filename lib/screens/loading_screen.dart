import 'package:flutter/material.dart';


class LoadingScreen extends StatelessWidget {
const LoadingScreen({Key? key}) : super(key: key);

static String routerName = 'loading';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}