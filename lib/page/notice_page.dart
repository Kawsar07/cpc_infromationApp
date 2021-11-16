import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
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
            child: Container(
              margin: EdgeInsets.all(6),
             child: Icon(MdiIcons.magnify,size: 35,),

            ),
          ),
          

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
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/333.png'), fit: BoxFit.cover)),

          ),
          Center(
            child: Text('Notice', style: TextStyle(fontSize: 40, color: Colors.blue, fontFamily: 'Style'),),
          )
        ],
      )
    );
  }
}
