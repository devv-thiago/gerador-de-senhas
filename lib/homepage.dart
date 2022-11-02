import 'package:flutter/material.dart';
import 'dart:math';

const caracteresSenha =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#\$&?';

Random _rnd = Random();

String gerarStringAleatoria(int length) => String.fromCharCodes(
    Iterable.generate(
        length,
        (_) =>
            caracteresSenha.codeUnitAt(_rnd.nextInt(caracteresSenha.length))));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var senha = '';

  void generateKey() {
    setState(() {
      senha = gerarStringAleatoria(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(2, 2, 2, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(8, 126, 139, 1),
          title: const Center(child: Text("Gerador de Senhas")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromRGBO(255, 255, 255, 1))),
                padding: EdgeInsets.all(10),
                height: 150,
                width: 250,
                margin: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "1. Clique no Botão Gerar para criar sua senha",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 25),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromRGBO(255, 255, 255, 1))),
                padding: EdgeInsets.all(10),
                height: 150,
                width: 250,
                margin: EdgeInsets.only(bottom: 50),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "2. Para copiar basta selecionar o a senha",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 25),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SelectableText(
                    "Sua Senha é: $senha",
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  height: 60,
                  width: 360,
                  margin: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: generateKey,
                    child: Text(
                      "Gerar",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(8, 126, 139, 1))),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
