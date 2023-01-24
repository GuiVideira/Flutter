import 'package:flutter/material.dart';


class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;



  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado{
    if(pontuacao < 4){
      return 'Você é não sabe nada, errou tudo!';
    } else if (pontuacao < 10){ 
      return 'Você é pessimo, vai ver um jogo de futebol!';
    } else if (pontuacao < 16){
      return 'Você é muito ruim, estude mais futebol!';
    } else if (pontuacao < 20){ 
      return 'Voce é mais ou menos, da pra acertar mais.';
    } else if (pontuacao < 26){ 
      return 'Voce é bonzinho, da pro gasto.';
    } else if (pontuacao < 30){ 
      return 'Voce é bom, continue assim mister fut!';
    } else if (pontuacao < 35){ 
      return 'Voce é top ein, parabêns!';      
    }else {
      return 'O melhor do mundo, rei do conhecimento do futebol!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
              child: Text(
                fraseResultado,
                style: const TextStyle(fontSize: 28),
                ),
            ),
            TextButton(
              onPressed: quandoReiniciarQuestionario,
              child:  Text(
                "Jogar Novamente"),
              style: 
              TextButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue,
              ),
            )
      ],
    );
  }
}