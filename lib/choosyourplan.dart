import 'package:flutter/material.dart';

class choosesubscription extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return choosefull();
  }
}

class choosefull extends StatefulWidget {

  @override
  _choosefullState createState() => _choosefullState();
}

class _choosefullState extends State<choosefull> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: height*1.0,
            width: width*1.0,
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose Your',style: TextStyle(
                    fontSize: height*0.04,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Best Plan',style: TextStyle(
                    fontSize: height*0.04,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('You Can Start With Free Access and',style: TextStyle(
                    color: Colors.grey
                  ),),
                  Text('Then Upgrade With Subscription',style: TextStyle(
                      color: Colors.grey
                  ),),

                  Container(
                    height: height*0.35,
                    width: width*0.9,
                    margin: EdgeInsets.only(top: height*0.04),
                    // color: Colors.black,
                    child: Card(
                      color: Colors.blueAccent,
                      child: Container(
                        margin: EdgeInsets.only(top: height*0.05),
                        child: Column(
                          children: [
                            Text('\$30 / Week',style:
                              TextStyle(color: Colors.white,
                              fontSize: height*0.04),),
                            SizedBox(height:height*0.025,),
                            Text('Unlimited access with the doctor',style: TextStyle(
                              color: Colors.white,
                              fontSize: height*0.025
                            ),),
                            Text('and get daily notes and articles',style: TextStyle(
                                color: Colors.white,
                                fontSize: height*0.025
                            ),),
                            Text('free consult for seven days',style: TextStyle(
                                color: Colors.white,
                                fontSize: height*0.025
                            ),),
                            SizedBox(height: height*0.035,),
                            GestureDetector(
                              onTap: (){},
                              child: Text('I choose this',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height*0.027
                              ),),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                  ),
                  Container(
                    height: height*0.35,
                    width: width*0.9,
                    // color: Colors.black,
                    child: Card(
                      // color: Colors.blueAccent,
                      child: Container(
                        margin: EdgeInsets.only(top: height*0.05),
                        child: Column(
                          children: [
                            Text('\$100 / Month',style:
                              TextStyle(color: Colors.black,
                              fontSize: height*0.04),),
                            SizedBox(height:height*0.025,),
                            Text('Unlimited access with the doctor',style: TextStyle(
                              color: Colors.grey,
                              fontSize: height*0.025
                            ),),
                            Text('and get daily notes and articles',style: TextStyle(
                                color: Colors.grey,
                                fontSize: height*0.025
                            ),),
                            Text('free consult for seven days',style: TextStyle(
                                color: Colors.grey,
                                fontSize: height*0.025
                            ),),
                            SizedBox(height: height*0.035,),
                            GestureDetector(
                              onTap: (){},
                              child: Text('I choose this',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height*0.027
                              ),),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
