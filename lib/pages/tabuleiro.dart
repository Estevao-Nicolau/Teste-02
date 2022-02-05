import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardGame extends StatelessWidget {
  const BoardGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Wrap(children: <Widget>[
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Box(),
            Column(
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (PlayDice()),
                        ),
                      );
                    },
                    child: Text('Jogar Dados'),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('1'),
          Column(
            children: <Widget>[
              Icon(Icons.circle_outlined),
              Icon(Icons.circle),
            ],
          ),
        ],
      ),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.black),
      ),
    );
  }
}

class PlayDice extends StatelessWidget {
  const PlayDice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
