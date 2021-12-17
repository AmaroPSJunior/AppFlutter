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
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'to adopt',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(height: 30),
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
                      onPressed: () {
                        // Navigator.of(context).pushNamed('/signin');
                        Navigator.pushNamed(context, '/signin');
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      child: const Text('Entrar'),
                      onPressed: () async {
                        final future = await Navigator.pushNamed(
                          context,
                          '/home',
                          arguments: 'meu nome',
                        );
                        debugPrint('final future: $future');
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 320,
                child: ElevatedButton(
                  child: const Text('Alert'),
                  onPressed: () {
                    _showMyDialog(
                      title: 'title',
                      message: 'User: $_userName \nSenha: $_password',
                      textButtonClose: 'Fechar',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
