import 'package:flutter/material.dart';
import 'Qrcode.dart';
import 'package:sppu_student_application/Screens/scan.dart';
class QrHomePage extends StatefulWidget {
  @override
  _QrHomePageState createState() => _QrHomePageState();
}
class _QrHomePageState extends State<QrHomePage> {
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
          appBar: AppBar(
            title: Text("Homepage"),
            centerTitle: true,
          ),
         
            body: SingleChildScrollView(
              child: Container(
              //height: MediaQuery.of(context).size.height,
    //  width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      child: Column(
      mainAxisAlignment:
      MainAxisAlignment.center,
      crossAxisAlignment:
      CrossAxisAlignment.stretch,
              children: <Widget>[
      Image(image:
      NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
              flatButton("Scan QR CODE", ScanPage()),
                SizedBox(height: 20.0,),
                flatButton("Generate QR CODE",
                    GeneratePage()),
                ],
              ),
      ),
            ),
          
      
    );
  }
  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder:
            (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color:
        Colors.blue,fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue,width:
          3.0),
          borderRadius:
          BorderRadius.circular(20.0)),
    );
  }
}

