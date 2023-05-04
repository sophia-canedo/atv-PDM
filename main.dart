import 'package:flutter/material.dart';

void main() {
  runApp(Atv4());
}

class Atv4 extends StatefulWidget {
  @override
  State<Atv4> createState() => _Atv4State();
}

class _Atv4State extends State<Atv4> {
  var contador = 0;
  final perguntas = [    
       "Qual é o seu animal preferido?",    
       "Qual a sua comida favorita?",    
       "Qual é o seu lugar favorito?",    
       "Qual é sua cor favorita?",  ];

  void clicou() {
    setState(() {
      contador = (contador + 1) % perguntas.length;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro App"),
        ),
        body: Column(
          children: [
            Text(perguntas[contador]),
            ElevatedButton(onPressed: clicou, child: Text('Clique aqui')),
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


