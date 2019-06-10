import 'package:flutter/material.dart';


class ExtraCard extends StatelessWidget{

  String nombreCarta = "Tenis de Mesa";
  String cartaUrl = "https://bit.ly/2H0jZMc";


  ExtraCard(this.nombreCarta, this.cartaUrl);

  void _onTapped(){
    switch(nombreCarta){

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
            width: 330.0,
            height: 600.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              image: DecorationImage(
                  image: NetworkImage(cartaUrl),
                  fit: BoxFit.cover
              ),
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
          Container(
            margin: EdgeInsets.only(
                left: 35,
                top: 350
            ),
            child: Text(
              nombreCarta,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 65.0,
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