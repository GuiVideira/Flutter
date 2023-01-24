import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp( PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
var _perguntaSelecionada = 0;
var _pontuacaoTotal = 0;

final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual jogador é mais famoso ?',
      'respostas': [
        {'texto': 'Cristiano Ronaldo', 'pontuacao': 10}, 
        {'texto': 'Messi', 'pontuacao': 5},
        {'texto': 'Neymar', 'pontuacao': 3},
        {'texto': 'Ibrahimovic', 'pontuacao': 1},
        ],
    },
    {
      'texto': 'Qual time é o maior ?',
      'respostas': [
        {'texto': 'Bayern Munchen', 'pontuacao' : 3}, 
        {'texto': 'Real Madrid', 'pontuacao' : 10}, 
        {'texto': 'Liverpool', 'pontuacao': 1},
        {'texto': 'Barcelona', 'pontuacao' : 5},
        ],
    },
    {
      'texto': 'Quem foi melhor ?',
      'respostas': [
        {'texto': 'Ronaldinho Gaucho', 'pontuacao' : 5},
        {'texto': 'Kaka','pontuacao' : 1},
        {'texto': 'Ronaldo Fenomeno','pontuacao' : 10},
        {'texto': 'cafu','pontuacao' : 3},
        ],
    },
    {
      'texto': 'Qual será o proximo melhor do mundo ?',
      'respostas': [
        {'texto': 'Mbappe', 'pontuacao' : 5},
        {'texto': 'Vini Jr','pontuacao' : 3},
        {'texto': 'Halland','pontuacao' : 10},
        {'texto': 'bellingham','pontuacao' : 1},
        ],
      }
    ];

void _responder(int pontuacao){
  if(temPerguntaSelecionada){
      setState(() {
    _perguntaSelecionada++;
    _pontuacaoTotal += pontuacao;
    });
  }
}

void _reiniciarQuestionario(){
  setState(() {
    _perguntaSelecionada =0;
    _pontuacaoTotal =0;
  });
}

bool get temPerguntaSelecionada {
  return _perguntaSelecionada < _perguntas.length;
}

  @override
  Widget build(BuildContext context){

    return  MaterialApp(
      home: Scaffold(
         backgroundColor: const Color.fromARGB(213, 28, 196, 50),
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body:temPerguntaSelecionada ? 
        Questionario(
          perguntas: _perguntas, 
          perguntaSelecionada: _perguntaSelecionada, 
          quantoResponder: _responder,
        )
        : Resultado(_pontuacaoTotal,_reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
