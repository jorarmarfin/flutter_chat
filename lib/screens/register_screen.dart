import 'package:flutter/material.dart';

import '../components/components.dart';
import '../themes/default_theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static String routerName = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Image(
                image: AssetImage(imgLogo),
                width: 110.0,
              ),
              const Text('REGISTRO'),
              _Formulario(),
              const SizedBox(
                height: 10,
              ),
              const _Footer()
            ],
          ),
        ),
      ),
    );
  }
}

class _Formulario extends StatefulWidget {
  _Formulario({Key? key}) : super(key: key);

  @override
  State<_Formulario> createState() => __FormularioState();
}

class __FormularioState extends State<_Formulario> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomInputComponent(
              icon: Icons.email_outlined,
              placeholder: 'Email',
              textController: emailCtrl,
              tipo: TextInputType.emailAddress),
          CustomInputComponent(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            tipo: TextInputType.emailAddress,
            isPassword: true,
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                print(emailCtrl.text);
              },
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    'REGISTER',
                    textAlign: TextAlign.center,
                  )))
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.blue[600]),
            ))
      ],
    );
  }
}
