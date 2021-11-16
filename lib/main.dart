// import 'dart:html';

import 'dart:io';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cpc_program/page/about%20us.dart';
import 'package:cpc_program/page/notice_page.dart';
import 'package:cpc_program/page/resgestion_form.dart';
import 'package:cpc_program/page/wing_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main (){
  runApp(MaterialApp(home:AnimatedSplashScreen(

    splash: Container(

      child: Image.asset('assets/cpc-logo.png', fit: BoxFit.cover,),


    ),

    splashTransition: SplashTransition.scaleTransition,
    nextScreen: MyApp(),
  ),debugShowCheckedModeBanner: false,),);
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          iconTheme: IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          title: Center(

            child: Image.asset('assets/cpc-logo.png', height: 90,
            width: 90,
            ),
          ),



          centerTitle: true,
       actions: [
         Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
           child:  IconButton(icon: Icon(MdiIcons.magnify,size: 32, color: Colors.blue,),
             onPressed: (){

             },
           ),
         )


       ],


        ),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       backgroundColor: Colors.blue[300],
       selectedItemColor: Colors.white,
       selectedFontSize: 20,
       unselectedItemColor: Colors.white,
       unselectedFontSize: 15,
       currentIndex: currentIndex,
       onTap: (index)=>setState(()=>currentIndex=(index),),
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home, size: 35,),
         label: 'Home',
         ),
         BottomNavigationBarItem(icon: Icon(MdiIcons.bell, size: 35,),
           label: 'Notifications',
         ),
         BottomNavigationBarItem(icon: Icon(MdiIcons.cogOutline, size: 35,),
           label: 'Setting',
         ),

       ],
     ),

     drawer: Card(

       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
       child:Drawer(

     child: ListView(

     children: [

     Container(

       padding: EdgeInsets.zero,
       child: UserAccountsDrawerHeader(
         accountEmail: Text(''),
         accountName:Text( ""),
         decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage('assets/cpc-logo.png'),),
         ),
       ),

     ),
ListTile(
  leading: Icon(MdiIcons.accessPoint,color: Colors.blue, size: 36,),
  title: Text('Wings',style: TextStyle(

    fontSize: 25,

  ),

  ),
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (cnx){return WingsPage();}));
  },
),
      Container(
        child: Divider(
          thickness: 3,
        ),
      ),
       ListTile(
         leading: Icon(MdiIcons.information,color: Colors.blue, size: 36,),
         title: Text('About Us',style: TextStyle(
           fontSize: 25,
         ),),
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (cnx){return AboutUsPage();}));
         },
       ),
       Container(
         child: Divider(
           thickness: 3,
         ),
       ),
       ListTile(
         leading: Icon(MdiIcons.accountPlus,color: Colors.blue, size: 36,),
         title: Text('Registration',style: TextStyle(
           fontSize: 25,
         ),),
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (cnx){return RegestionPage();}));
         },
       ),
       Container(
         child: Divider(
           thickness: 3,
         ),
       ),
       ListTile(
         leading: Icon(MdiIcons.bulletinBoard,color: Colors.blue, size: 36,),
         title: Text('Notice', style: TextStyle(
           fontSize: 25,

         ),),
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (cnx){return NoticePage();}));
         },
       ),
       Container(
         child: Divider(
           thickness: 3,
         ),
       ),
       ListTile(
         leading: Icon(MdiIcons.contacts,color: Colors.blue, size: 36,),
         title: Text('Contacts',style: TextStyle(
           fontSize: 25,
         ),),
       ),
       Container(
         child: Divider(
           thickness: 3,
         ),
       ),
       ListTile(
         leading: Icon(MdiIcons.frequentlyAskedQuestions,color: Colors.blue, size: 36,),
         title: Text('Faq',style: TextStyle(
           fontSize: 25,
         ),),
       ),
       Container(
         child: Divider(
           thickness: 3,
         ),
       ),
      // ListTile(
      //   leading: Icon(Icons.eleven_mp_sharp),
      // )
      ],
    ),
    ),
     ),
body: Column(
  children: [


    Expanded(
      flex: 20,
      child:  Container(
        margin: EdgeInsets.all(6),
        // height: 220,
        // width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage('assets/final.png', ),fit: BoxFit.cover,
          ),
        ),
      ),),
    Expanded(
      flex: 50,
      child: GridView.count(crossAxisCount: 2,
    children: [
Card(
  
  child: Stack(
    children: [
      Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[350],
        ),
        child: Center(
          child: Text('   ACM \nTask Forse', style: TextStyle(
            fontSize: 35.0,color: Colors.blue,
            fontFamily: 'Style',
          ),),
        ),
      ),

    ],
  ),
),
      Card(

        child: Stack(
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Center(
                child: Text('Research   \n      & \n  Journal', style: TextStyle(
                  fontSize: 35.0,color: Colors.blue,
                  fontFamily: 'Style',
                ),),
              ),
            ),

          ],
        ),
      ),
      Card(

        child: Stack(
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Center(
                child: Center(
                  child: Text(' Jobs, Career \n        & \n   Industry  \nCollaboration', style: TextStyle(
                    fontSize: 25.0,color: Colors.blue,
                    fontFamily: 'Style',
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),
      Card(

        child: Stack(
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350],
              ),
              child: Center(
                child: Text('DEVELOPMENT', style: TextStyle(
                  fontSize: 23.0,color: Colors.blue,
                  fontFamily: 'Style',
                ),),
              ),
            ),

          ],
        ),
      ),

    ],

    ),),
  ],
),


    );
  }
}
