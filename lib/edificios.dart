import 'package:flutter/material.dart';
import 'onlyback.dart';
import 'edificioscard.dart';

class Edificios extends StatelessWidget{

  final containerEdificios = Container(
    margin: EdgeInsets.only(
      top: 30,
      left: 10,
      right: 10,
      bottom: 10,
    ),
    child: Text(
        "Edificios",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
    ),
  );

  final containerDesc = Container(
    margin: EdgeInsets.only(
      top: 10,
      left: 10,
      right: 10,
      bottom: 10,
    ),
    child: Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tristique neque nec commodo tempus. Proin gravida vel nunc ac facilisis. Sed aliquam vestibulum fermentum.",
      style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.normal
      ),
      textAlign: TextAlign.justify,
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          OnlyBack(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              containerEdificios,
              containerDesc,
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    EdificiosCards("Sistemas","https://bit.ly/2H0jZMc"),
                    EdificiosCards("Mecánica","https://bit.ly/2Sp1lzF"),
                    EdificiosCards("Distancia","https://bit.ly/2Xn98BJ"),
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }

}