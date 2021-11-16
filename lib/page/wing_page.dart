import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WingsPage extends StatefulWidget {
  const WingsPage({Key? key}) : super(key: key);

  @override
  _WingsPageState createState() => _WingsPageState();
}

class _WingsPageState extends State<WingsPage> {
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

          Container(
            margin: EdgeInsets.all(6),
            child: Icon(MdiIcons.magnify,size: 35,),
          ),

        ],

        automaticallyImplyLeading: true,
        leading: IconButton(

          icon: Icon(Icons.arrow_back_ios),
          // onPressed: ()=>exit(0),
          onPressed: ()=>Navigator.pop(context, false),
        ),

      ),

      body:Center(

        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/bacground.jpg',),fit: BoxFit.cover)),
              child: Center(

                child: GridView.count(crossAxisCount: 2,
crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.only(top: 80),
                  children: [
                    Center(
                      child: Card(

                        child: Stack(
                          children: [
                            Center(
                              child: Container(

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
                            ),

                          ],
                        ),
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
                                fontSize: 22.0,color: Colors.blue,
                                fontFamily: 'Style',
                              ),),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
