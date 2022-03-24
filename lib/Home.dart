import 'package:flutter/material.dart';
import 'dart:math';

class pag_inicial extends StatefulWidget {
  @override
  funct_init createState() => funct_init();
}

class funct_init extends State<pag_inicial> {
  //Vetor com frases
  var frases_aleatorias = [
    "A vida e uma caixa preta nunca saberemos o seu real significado.⁠",
    "Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.",
    "⁠não deveríamos temer a morte, mais sim a vida. ",
    "A verdade, é que dói lembrar dela.",
    "No mundo do aleatório a ordem é não se preocupar.",
    "Cuide de si mesmo como cuidaria de alguém que você ama.",
    "o ruim de mentir, com tempo você acaba acreditando nas suas próprias mentiras. ⁠",
    "⁠Você tem que estudar para não ficar pagando de burro publicamente",
    "⁠⁠Quem tenta fazer todo mundo feliz acaba se sentido mais sozinho."
  ];
  var frase = " Clique a baixo para gerar uma nova frase";
  //calcular randomicamente a frase do vetor e adicionar na variavel
  void gerar_frase() {
    var numerSorteado = Random().nextInt(frases_aleatorias.length);
    setState(() {
      frase = frases_aleatorias[numerSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Frases do dia"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //rodar variavel
                Text(
                  frase,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  color: Colors.black,
                  onPressed: gerar_frase,
                )
              ],
            ),
          ),
        ));
  }
}
//Github/ Jhonnythr
