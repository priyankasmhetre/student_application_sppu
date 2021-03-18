import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

import 'Add.dart';
class  TeacherHomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _TeacherHomeScreenState();

  }

}

class _TeacherHomeScreenState extends State<TeacherHomeScreen>{
String valueChoose;
List listitem = ['Extra Lectures','Syllabus','Pdf','Videos','Exam Notification'];

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar:AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.jpeg",
              height: 30,alignment: Alignment.center,),
          ],
        ),

        backgroundColor: Colors.cyan,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),

            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer:Drawer(

        child: ListView(

          children:<Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/images/uni_image.jpeg"),
                      fit: BoxFit.cover)
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Image.asset("assets/images/logo1.png",
                height: 30,),

            ),
            ListTile(
              title: Text("Profile"),
              leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:30,),

            ),
            ListTile(
              title: Text("Add"),
              leading: Image.asset("assets/images/Add1.png",
                height: 30,),
               //leading:  SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904437.svg",height:30,),

            ),

            ListTile(
              title: Text(' Display Attendance'),
              leading: Image.asset("assets/images/attendence.png",

                height: 30,
              ),

            ),

            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),


            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[


          SafeArea(child:Padding(

            padding:EdgeInsets.all(40.0),
            child: Column(

              children:<Widget> [
                Expanded(
                  child: GridView.count(

                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      padding: EdgeInsets.all(8),
                      primary:false,
                      children:<Widget> [

                         Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                Image.asset("assets/images/logo.jpeg",
                                ),

                                Text("Home"),
                              ],
                            ),
                          ),
                         
                         Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            
                            // ignore: deprecated_member_use
                            child:  RaisedButton(
                              child: Text('Add'),
                               onPressed: () {
                               Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>Add()),
                           );

                            },
                              ),

                            ),






                     Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904565.svg",height:128,),

                                Text(" Add "),
                              ],
                            ),
                          ),

                         Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                Image.asset("assets/images/attendence.png",
                                ),
                                Text(" Display Attendence"),
                              ],
                            ),
                          ),

                      ],
                      crossAxisCount:2),
                ),
              ],

            ),

          ),
          ),

        ],
      ),

    );
  }

}
