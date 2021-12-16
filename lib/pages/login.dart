import 'package:flutter/material.dart';

import '/components/logo.dart';
import '../components/my_alert.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _userName = '';
  String _password = '';

  void _setUserName(data) => setState(() => _userName = data);
  void _setPassword(data) => setState(() => _password = data);

  void _showMyDialog({
    required String title,
    required String message,
    String? textButtonClose,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return MyAlert(
          title: title,
          message: message,
          textButtonClose: textButtonClose,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('to adopt', style: Theme.of(context).textTheme.headline4),
              const Logo(),
              TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text('Usuarion - ' + _userName),
                ),
                keyboardType: TextInputType.text,
                onChanged: (value) => _setUserName(value),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text('Senha - ' + _password),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onChanged: (value) => _setPassword(value),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: OutlinedButton(
                      child: const Text('Cadastrar-se'),
                      onPressed: () => debugPrint('Teste amaro'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      child: const Text('Entrar'),
                      onPressed: () => _showMyDialog(
                        title: 'title',
                        message: 'User: $_userName \nSenha: $_password',
                        // textButtonClose: 'Fechar',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 320,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('Disabled'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
