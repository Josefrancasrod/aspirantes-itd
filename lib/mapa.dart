
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'onlyback.dart';

class Mapa extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Mapa();
  }

}

class _Mapa extends State<Mapa>{

  GoogleMapController googleMapController;

  final containerNombre = Container(
    margin: EdgeInsets.only(
      top: 20,
      left: 10,
      right: 10,
      bottom: 5,
    ),
    child: Text(
      "Mapa",
      textAlign: TextAlign.start,
      style: TextStyle(
          color: Colors.white,
          fontSize: 30,
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
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
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
          alignment: Alignment(0, -1),
          children: <Widget>[
            OnlyBack(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                containerNombre,
                containerDesc,
                Container(
                  height: 500.0,
                  width: double.infinity,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      //target: LatLng(40.7128,-74.00600),
                      bearing: -375.0,
                      target: LatLng(24.0328059,-104.6466323),
                      tilt: 20.0,
                      zoom: 17.5,
                    ),
                    onMapCreated: (controller){
                      setState((){
                        googleMapController = controller;
                      });
                    } ,
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

}