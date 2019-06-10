import 'package:flutter/material.dart';
import 'homecardstitulares.dart';

class CardListTitularesList extends StatelessWidget {

  final listViewContainer = Container(
    //width: 400.0,
    //height: 225.0,
    child: ListView(
      padding: EdgeInsets.only(

        top: 10,

      ),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        HomeCardTitulares("http://bit.ly/2GXAOaK", "Entrega de Fichas", "Del 01 de marzo al 24 mayo"),
        HomeCardTitulares("https://bit.ly/2SoktOn", "Expotec", "Del 11 al 15 marzo"),
        HomeCardTitulares("https://bit.ly/2H1CUGg", "Examen Ceneval", "7 de junio"),
      ],
    ),
  );



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return listViewContainer;
  }

}