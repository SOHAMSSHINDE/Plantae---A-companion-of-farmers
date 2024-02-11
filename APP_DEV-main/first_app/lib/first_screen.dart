import 'dart:math';

import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Material(
      color: Colors.tealAccent,
      child: Center(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 80,
                width: 120,
                color: Color.fromRGBO(23, 158, 127, 1),
                child: Center(
                  child: Text(
                    generateRandomNO(),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 80,
                width: 120,
                color: Color.fromRGBO(23, 158, 127, 1),
                child: Center(
                  child: Text(
                    generateRandomNO(),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 80,
                width: 120,
                color: Color.fromRGBO(23, 158, 127, 1),
                child: Center(
                  child: Text(
                    generateRandomNO(),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 80,
                width: 120,
                color: Color.fromRGBO(23, 158, 127, 1),
                child: Center(
                  child: Text(
                    generateRandomNO(),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }

  String generateRandomNO() {
    var random = Random();
    int luckyno = random.nextInt(10);
    return "Your lucky number is $luckyno";
  }
}
