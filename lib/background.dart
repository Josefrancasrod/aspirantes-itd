import 'package:flutter/material.dart';
import 'homecardtitulareslist.dart';
import 'cardhomeescuela.dart';


class Background extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final background = Container(
      height: 500.0,
      color: Color(0xff00336A),
    );

    final Eventos = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      //height:00.0,
      child: Text(
        "Eventos",
        //textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: Colors.white
        ),
      ),
    );
    final masSobreLaEscuela = Container(
      margin: EdgeInsets.only(
        top: 0,
        left: 20,
        right: 20,
      ),
      //height:00.0,
      child: Text(
        "Mas sobre la escuela",
        //textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
            color: Colors.white
        ),
      ),
    );

    final title = Text(
      "Instituto Tecnológico de Durango",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );

    final textInContainer = Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 15.0,
      ),
      child: title,
    );

    final listViewContainer = Container(
      //width: 400.0,
      //height: 225.0,
      child: ListView(
        padding: EdgeInsets.only(

          top: 10,

        ),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardEscuela("     Edificios", "https://bit.ly/2NpVDwq" ),
          CardEscuela("Extraescolares", "https://bit.ly/2VbUZFr" ),
          CardEscuela("     Mapa", "http://bit.ly/2EptYsU" ),
        ],
      ),
    );



    return Stack(
          //alignment: Alignment(0, -0.85),
          children: <Widget>[
            background,

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textInContainer,
                Eventos,

                Expanded(
                  child: CardListTitularesList(),
                ),
                masSobreLaEscuela,
                Expanded(
                  child: listViewContainer,
                ),


              ],
            ),



          ],
        );


  }


}
