import 'package:flutter/material.dart';
import 'edificios.dart';
import 'extraescolares.dart';
import 'mapa.dart';


class CardEscuela extends StatefulWidget{

  String nombreCarta = "Extraescolar";
  String cartaUrl = "https://bit.ly/2VbUZFr";


  CardEscuela(this.nombreCarta, this.cartaUrl);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardEscuela(nombreCarta,cartaUrl);
  }

}


class _CardEscuela extends State<CardEscuela>{

  String nombreCarta = "Extraescolar";
  String cartaUrl = "https://bit.ly/2VbUZFr";

  _CardEscuela(this.nombreCarta, this.cartaUrl);

  void _onTapped(){
    switch(nombreCarta){
      case "     Edificios": Navigator.push(context, MaterialPageRoute(builder: (context)=>Edificios())); break;
      case "Extraescolares": Navigator.push(context, MaterialPageRoute(builder: (context)=>Extraescolares())); break;
      case "     Mapa": Navigator.push(context, MaterialPageRoute(builder: (context)=>Mapa())); break;

    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: _onTapped,
      child: Stack(
        //alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: 5.0,
                left: 20.0,
                right: 20.0,
                bottom: 20.0
            ),
            width: 400.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.indigo,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0)
                ),
              ],
              shape: BoxShape.rectangle,
            ),

          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              margin: EdgeInsets.only(
                  top: 5.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0
              ),
              width: 400.0,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xff6f173d),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 7.0)
                  ),
                ],
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(cartaUrl),
                ),
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 100,
                top: 60
            ),
            child: Text(
              nombreCarta,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }

}