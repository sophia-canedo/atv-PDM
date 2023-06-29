import 'package:flutter/material.dart';
import './questionario.dart';

class Inicio extends StatelessWidget {
  void iniciarQuestionario(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Questionario()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Seja bem-vindo ao Formulário!!!!',
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                iniciarQuestionario(context);
                print('Contagem: 1');
              },
              child: Text('Iniciar'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 28), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}



