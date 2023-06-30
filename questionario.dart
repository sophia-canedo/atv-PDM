import 'package:flutter/material.dart';
import './questoes.dart';
import './respostas.dart';

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var perguntaAtual = 0;

  final List<Map<String, Object>> questionario = [
    {
      "pergunta": "Qual a sua cor favorita?",
      "respostas": ["Amarelo", "Preto", "Branco", "Azul", "Vermelho", "Laranja"]
    },
    {
      "pergunta": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito","Papagaio"]
    },
    {
      "pergunta": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < questionario.length;
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
  }

  Widget build(BuildContext context) {
    if (temPergunta) {
      return Column(
        children: [
          Questao(questionario[perguntaAtual]["pergunta"].toString()),
          ...(questionario[perguntaAtual]["respostas"] as List<String>).map((resposta) {
            return Resposta(resposta, acao);
          }).toList(),
        ],
      );
    } else {
      return Center(
        child: Text(
          'Terminou',
          style: TextStyle(fontSize: 28),
        ),
      );
    }
  }
}
