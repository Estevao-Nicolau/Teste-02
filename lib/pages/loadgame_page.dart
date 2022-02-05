import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test02_cobras_escadas/pages/tabuleiro.dart';

class LoadGame extends StatefulWidget {
  LoadGame({Key? key}) : super(key: key);

  @override
  State<LoadGame> createState() => _LoadGameState();
}

class _LoadGameState extends State<LoadGame> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final player01 = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "player01",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final player02 = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "player02",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        title: Text('Cobras e Escadas'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (MenuGame()),
                    ));
              })
        ],
      ),
      body: Center(
          child: Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    child: Lottie.asset('assets/dados.json'),
                  ),
                  SizedBox(height: 30.0),
                  player01,
                  SizedBox(height: 30.0),
                  player02,
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (BoardGame()),
                        ),
                      );
                    },
                    child: Text('Iniciar'),
                  ),
                ],
              ))),
    );
  }
}

class MenuGame extends StatelessWidget {
  const MenuGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
