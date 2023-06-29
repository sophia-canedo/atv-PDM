import 'package:flutter/material.dart';
import './questoes.dart';
import './respostas.dart';

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var perguntaAtual = 0;
  var contagem = 1; 

  final List<Map<String, Object>> questionario = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': ['Verde', 'Preto', 'Laranja', 'Azul', 'Vermelho', 'Amarelo']
    },
    {
      'pergunta': 'Qual é seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Tartaruga', 'Periquito']
    },
    {
      'pergunta': 'Qual sua linguagem favorita?',
      'respostas': ['Python', 'Java', 'JavaScript']
    },
  ];
  void responder() {
    setState(() {
      perguntaAtual++;
      contagem++;
      print('Pressionou: $contagem');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: perguntaAtual < questionario.length
          ? Column(
              children: [
                Questao(questionario[perguntaAtual]['pergunta'].toString()),
                ...((questionario[perguntaAtual]['respostas'] as List<String>)
                    .map((resposta) {
                  return Resposta(responder, resposta);
                }).toList()),
              ],
            )
          : Container(
              color: Colors.blue, 
              child: Center(
                child: Text(
                  'Acabou!!! Parabéns!!!',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
    );
  }
}
