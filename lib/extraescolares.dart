import 'package:flutter/material.dart';
import 'onlyback.dart';
import 'extracard.dart';

class Extraescolares extends StatelessWidget{

  final containerExtra = Container(
    margin: EdgeInsets.only(
      top: 30,
      left: 10,
      right: 10,
      bottom: 10,
    ),
    child: Text(
      "Extraescolares",
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
              containerExtra,
              containerDesc,
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ExtraCard("Ping Pong","https://bit.ly/2E4zTlq"),
                    ExtraCard("Futbol","https://bit.ly/2XoubUn"),
                    ExtraCard("Danza","https://bit.ly/2BQaBHq"),
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