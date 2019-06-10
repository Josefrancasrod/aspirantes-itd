import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'background.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home>{

  String result = "Hey There!";
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Future _scanQR() async{
    try{
      String qrResult = await BarcodeScanner.scan();
      if (await canLaunch(qrResult)) {
        await launch(qrResult);
      } else {
        qrResult = 'Could not launch $qrResult';
        final snackBar = SnackBar(content: Text('Codigo no valido $qrResult'));
        _scaffoldKey.currentState.showSnackBar(snackBar);

      }
      setState(() {
        result = qrResult;
      });
    }on PlatformException catch(e){
      if(e.code == BarcodeScanner.CameraAccessDenied){
        setState(() {
          result = "Camera permission was denied";
        });
      }else{
        setState(() {
          result= "Unknow Error $e";
        });
      }
    }on FormatException{
      setState(() {
        result = "You pressed the back button before scan anything";
      });
    }catch(e){
      setState(() {
        result= "Unknow Error $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: Background(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _scanQR,
        icon: Icon(Icons.camera_alt),
        label: Text("Escanear"),
        backgroundColor: Color(0xff6f173d),
      ),

    );
  }

}