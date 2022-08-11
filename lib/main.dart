import 'package:flutter/material.dart';
import 'package:flutter_chat/themes/default_theme.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: LoginScreen.routerName,
      routes: {
        HomeScreen.routerName: (context) => const HomeScreen(),
        ChatScreen.routerName: (context) => const ChatScreen(),
        LoginScreen.routerName: (context) => const LoginScreen(),
        UsuariosScreen.routerName: (context) => const UsuariosScreen(),
        LoadingScreen.routerName: (context) => const LoadingScreen(),
        RegisterScreen.routerName: (context) => const RegisterScreen(),
      },
      theme: DefaultTheme.base,
    );
  }
}
