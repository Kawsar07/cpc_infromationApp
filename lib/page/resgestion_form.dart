import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegestionPage extends StatefulWidget {
  const RegestionPage({Key? key}) : super(key: key);

  @override
  _RegestionPageState createState() => _RegestionPageState();
}

class _RegestionPageState extends State<RegestionPage> {
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
              child: Icon(MdiIcons.magnify, size: 35,),
            ),
            )

          ],
          automaticallyImplyLeading: true,
          leading: IconButton(

            icon: Icon(Icons.arrow_back_ios),
            // onPressed: ()=>exit(0),
            onPressed: ()=>Navigator.pop(context, false),
          ),


        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text('Registration Please Fill-out this form', style: TextStyle(
                    fontSize: 20, color: Colors.blue,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Vercity Mail',
                      hintText: 'Enter Your Vercity Mail',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Varsity ID',
                      hintText: 'Varsity ID',
                    ),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Sign In'),
                  onPressed: (){},
                )
              ],
            )
        )
    );
  }
}
