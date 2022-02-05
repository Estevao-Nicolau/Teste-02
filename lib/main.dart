import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test02_cobras_escadas/pages/loadgame_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Load(),
    );
  }
}

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.orange[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    left: 50,
                  ),
                  child: Lottie.asset("assets/tabuleiro01.json")),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (LoadGame()),
                      ),
                    );
                  },
                  child: Text('Bora Jogar'),
                ),
              )
            ],
          )),
    );
  }
}
