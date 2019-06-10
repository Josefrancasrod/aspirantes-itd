import 'package:flutter/material.dart';

class HomeCardTitulares extends StatelessWidget{

  String cardImageUrl = "asd";
  String cardEvent = "asd";
  String cardDate = "asd";

  HomeCardTitulares(this.cardImageUrl, this.cardEvent, this.cardDate);

  void _onTapped(){
    switch(cardEvent){
      //case "Mapa": Navigator.push(context, MaterialPageRoute(builder: (context)=>Mapa())); break;
    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: _onTapped,
      child: Container(
        //height: 400,
        child: Stack(
          //alignment: Alignment(-.5,1),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: 5.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0
              ),
              width: 400.0,
              height: 225.0,
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
              ),

            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                margin: EdgeInsets.only(
                    top: 5.0,
                    left: 20.0,
                    right: 20.0,
                    bottom: 20.0
                ),
                width: 400.0,
                height: 225.0,
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
                    image: NetworkImage(cardImageUrl),
                  ),
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 55,
                      left: 20,
                    ),
                    child: Text(
                      cardEvent,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                      left: 20,
                    ),
                    child: Text(
                      cardDate,

                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}