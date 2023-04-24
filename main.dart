import 'package:flutter/material.dart';

void main() {
  runApp(aulapdm1());
}

class aulapdm1 extends StatelessWidget {
  void clicou() {
    print("teste");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro App"),
        ),
        body: Column(
          children: [
            Text("Aprendendo Flutter"),
            Text("Aula CEFET Grupo 2"),
            ElevatedButton(onPressed: clicou, child: Text('Enviar')),
            ElevatedButton(onPressed: clicou, child: Text('Cancelar')),
            ElevatedButton(onPressed: clicou, child: Text('Salvar')),
            Column(
              children: [
                Text("Aprendendo"),
                Text("Programação"),
                Text("Flutter"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

