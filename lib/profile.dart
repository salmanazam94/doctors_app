
import 'package:city_wide/Notifications.dart';
import 'package:city_wide/choosyourplan.dart';
import 'package:city_wide/settings.dart';
import 'package:city_wide/subscription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myprofile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return profilfull();
  }
}

class profilfull extends StatefulWidget {

  @override
  _profilfullState createState() => _profilfullState();
}

class _profilfullState extends State<profilfull> {

  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: width*0.04,top: height*0.08),
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: height*0.06,
                      backgroundImage: NetworkImage('https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300'),
                    ),
                    SizedBox(width: width*0.04,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jimmy Sullivan',
                          style: TextStyle(
                              fontSize: height*0.03,
                              color: Colors.black
                          ),),
                        Text('@jimmy321',
                          style: TextStyle(
                              fontSize: height*0.02
                          ),),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height*0.04,left: width*0.06,right: width*0.06),
                    alignment: Alignment.center,
                    height: height*0.15,
                    width: width*0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blueAccent
                    ),
                  ),
                  Container(
                    height: height*0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text('Balance',style: TextStyle(
                                fontSize:height*0.025,
                                color: Colors.white
                              ),),
                              Text('\$ 1200.0',style: TextStyle(
                                fontSize:height*0.025,
                                color: Colors.white
                              ),),
                            ],
                          ),
                          height: height*0.1,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text('Points',style: TextStyle(
                                fontSize:height*0.025,
                                color: Colors.white
                              ),),
                              Text('1280',style: TextStyle(
                                fontSize:height*0.025,
                                color: Colors.white
                              ),),
                            ],
                          ),
                          height: height*0.1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: width*0.05, left: width*0.05 ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My Account',
                          style: TextStyle(
                              fontSize: height*0.025,
                              color: Colors.black
                          ),),
                        Icon(Icons.arrow_forward),

                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Divider(),
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My Subscription',
                          style: TextStyle(
                              fontSize: height*0.025,
                              color: Colors.black
                          ),),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => subscriptionfull()));
                            },
                            child: Icon(Icons.arrow_forward)),

                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Divider(),
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Notifications',
                          style: TextStyle(
                              fontSize: height*0.025,
                              color: Colors.black
                          ),),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>notifull() ));
                            },
                            child: Icon(Icons.arrow_forward)),

                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Divider(),
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Settings',
                          style: TextStyle(
                              fontSize: height*0.025,
                              color: Colors.black
                          ),),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>settingsfull()));
                            },
                            child: Icon(Icons.arrow_forward)),

                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Divider(),
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Logout',
                        style: TextStyle(
                          fontSize: height*0.025,
                          color: Colors.black
                        ),),
                        Icon(Icons.arrow_forward),

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



