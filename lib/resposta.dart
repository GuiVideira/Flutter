
import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
final void Function() quandoSelecionado;

  const Respostas(this.texto, this.quandoSelecionado);


  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 22, 102, 207),
          textStyle: const TextStyle(color: Color.fromARGB(255, 108, 192, 126))
      ),
      onPressed: quandoSelecionado,
      child: Text(texto)
    ),
  );
}
}