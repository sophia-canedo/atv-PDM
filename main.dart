import 'package:flutter/material.dart';
import 'bt.dart';
import 'txt.dart';

void main() {
  runApp(Atv4());
}

class Atv4 extends StatefulWidget {
  @override
  State<Atv4> createState() => _Atv4State();
}

class _Atv4State extends State<Atv4> {
  var contador = 0;
  final questoes = [
    "Qual é o seu animal preferido?",
    "Qual a sua comida favorita?",
    "Qual é o seu lugar favorito?",
    "Qual é sua cor favorita?",
    "Qual o seu carro favorito?",
    "Um país que deseja viajar?"
  ];

  void clique() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro aplicativo"),
        ),
        body: Column(
          children: [
            Perguntas(questoes[contador]),
            ElevatedButton(
              onPressed: clique,
              child: Text('Próxima pergunta'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: null,
              child: Text('Botão Nulo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => print("Arrow"),
              child: Text('Função Arrow'),
            ),
          ],
        ),
      ),
    );
  }
}

class Perguntas extends StatelessWidget {
  final String texto;

  const Perguntas(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        texto,
        textAlign: TextAlign.center,
      ),
    );
  }
}
