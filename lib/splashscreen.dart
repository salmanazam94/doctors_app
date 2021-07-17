import 'dart:async';

import 'package:city_wide/landingscreen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return splashfull();
  }
}
class splashfull extends StatefulWidget {

  @override
  _splashfullState createState() => _splashfullState();
}

class _splashfullState extends State<splashfull> {
  double height;
  double width;
  void _time(){
    Timer(Duration(seconds: 5),()=>  Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => landingscreen())));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _time();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff87cefa),
      body: SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            height: height*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: height*0.06,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-vector/isolated-phonendoscope_1262-6423.jpg?size=338&ext=jpg'),
                ),
                SizedBox(height: height*0.02,),
                Text('City Wide',
                  style:TextStyle(
                      fontSize: height*0.03,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)
              ],
            )
        ),
      ),
    );
  }
}

