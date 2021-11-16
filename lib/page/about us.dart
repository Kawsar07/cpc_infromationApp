import 'dart:io';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

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
              child: Icon(MdiIcons.magnify,size: 35,),
            )

          ],
          automaticallyImplyLeading: true,
          leading: IconButton(

            icon: Icon(Icons.arrow_back_ios),
            // onPressed: ()=>exit(0),
onPressed: ()=>Navigator.pop(context, false),
          ),

        ),
      body: Stack(

        children: [
          Container(

            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bacground.jpg'),fit: BoxFit.cover),
            ),
child: Center(
  child: Text('DIU CPC is the most primitive and extensive club as well as the biggest club in Daffodil International University. We work together to explore every field of Computer Science. Our honorable Department Head Professor Dr. Touhid Bhuiyan Sir is the chief supervisor of the club. The working activities of CPC can be divided into 4 wings. \n1.ACM Task Forse \n2.Development, \n3.Research and Journal, \n4.Jobs, Career & Industry Collaboration',  style: TextStyle(
    fontFamily: 'Style',
    fontSize: 18,
    color: Colors.blue,
  ),),
),




          ),

        ],
      )
    );
  }
}
