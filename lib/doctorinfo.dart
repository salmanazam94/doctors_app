import 'package:city_wide/Doctorlocation.dart';
import 'package:city_wide/choosyourplan.dart';
import 'package:city_wide/consultday.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class infodoctor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return infofull();
  }
}

class infofull extends StatefulWidget {

  @override
  _infofullState createState() => _infofullState();
}

class _infofullState extends State<infofull> {
  var _rating;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Color(0xffC6D8FF),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: height*1.0,
                width: width*1.0,
                color: Color(0xffC6D8FF),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height*0.08,),
                      height: height*0.15,
                      width: width*0.25,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
                        fit: BoxFit.cover,),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height*0.6,
                width: width*1.0,
                margin: EdgeInsets.only(top: height*0.4,),
                decoration: BoxDecoration(
                  color: Color(0xffFFFAFB),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )
                ),
                child: Container(
                  margin: EdgeInsets.only(top: height*0.04,left: width*0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DR. Brain Hanner',
                      style: TextStyle(
                        fontSize: height*0.025,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: height*0.01,
                      ),
                      Row(
                        children: [
                          RatingBar(
                            onRatingChanged: (rating) => setState(() => _rating = rating),
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            halfFilledIcon: Icons.star_half,
                            isHalfAllowed: true,
                            filledColor: Colors.yellow,
                            emptyColor: Colors.grey,
                            halfFilledColor: Colors.amberAccent,
                            initialRating: 0.5,
                            size: height*0.02,
                          ),
                          SizedBox(width: width*0.03,),
                          Text('4.5'),
                        ],
                      ),
                      SizedBox(
                        height: height*0.01,
                      ),
                      Text('Specialist in bone and skin health. Love',
                        style:TextStyle(
                          color: Colors.grey
                        ) ,),
                      SizedBox(
                        height: height*0.005,
                      ),
                      Text('sharing and work at Miami Hospital',
                          style:TextStyle(
                              color: Colors.grey
                          )),
                      SizedBox(height: height*0.03,),
                      Container(

                        height: height*0.1,
                        width: width*0.9,
                        decoration:BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>choosefull()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: width*0.04),
                            child: Row(
                              children: [
                                Image.asset('assets/images/subscribe.png',
                                height: height*0.05,),
                                SizedBox(width: width*0.06,),
                                Container(
                                  margin: EdgeInsets.only(top: height*0.025),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Subscribe Consult',
                                      style: TextStyle(
                                        fontSize: height*0.025,
                                        color: Colors.white
                                      ),),
                                      Text('Takes 25% takes or more!',
                                      style: TextStyle(
                                        fontSize: height*0.02,
                                        color: Colors.white
                                      ),),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Container(
                        height: height*0.1,
                        width: width*0.9,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: width*0.04),
                          child: Row(
                            children: [
                              Image.asset('assets/images/calendar.png',
                              height: height*0.05,),
                              SizedBox(width: width*0.06,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>consultfull()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: height*0.025),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Availibility',
                                      style: TextStyle(
                                        fontSize: height*0.025,
                                        color: Colors.black
                                      ),),
                                      Text('08:00 AM - 05:00PM',
                                      style: TextStyle(
                                        fontSize: height*0.02,
                                        color: Colors.grey
                                      ),),

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.02 ,),
                      Container(

                        height: height*0.1,
                        width: width*0.9,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Locationfull()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: width*0.04),
                            child: Row(
                              children: [
                                Image.asset('assets/images/pin.png',
                                height: height*0.05,),
                                SizedBox(width: width*0.06,),
                                Container(
                                  margin: EdgeInsets.only(top: height*0.025),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Location',
                                      style: TextStyle(
                                        fontSize: height*0.025,
                                        color: Colors.black
                                      ),),
                                      Text('Miami Hospital Center',
                                      style: TextStyle(
                                        fontSize: height*0.02,
                                        color: Colors.grey
                                      ),),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

