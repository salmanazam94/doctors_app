import 'package:city_wide/againnumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class landingscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return loginfull();
  }
}

class loginfull extends StatefulWidget {

  @override
  _loginfullState createState() => _loginfullState();
}

class _loginfullState extends State<loginfull> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff87cefa),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: height*0.7,
                width: width*1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius:height*0.08,
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: NetworkImage('https://image.freepik.com/free-vector/male-doctor-wear-medical-mask_43623-708.jpg'),
                    ),
                    SizedBox(height: height*0.05,),
                    Text('Connect With Your',
                    style: TextStyle(
                      fontSize: height*0.04,
                      color: Colors.white
                    ),),
                    SizedBox(height: height*0.01,),
                    Text('Match Doctor',
                      style: TextStyle(
                        fontSize: height*0.04,
                        color: Colors.white,
                      ),),
                    SizedBox(height: height*0.02,),
                    Text('Get Your Best Experience Now!',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Container(
                height: height*0.3,
                width: width*1.0,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: height*0.05,left: width*0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome to City wide!',
                            style: TextStyle(
                              fontSize: height*0.03,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('Insert Your Phone Number To Started'),
                          SizedBox(height: height*0.06,),
                          Container(
                            width: width*0.8,
                            child: IntlPhoneField(
                              // decoration: InputDecoration(
                              //   labelText: 'Phone Number',
                              //   border: OutlineInputBorder(
                              //     borderSide: BorderSide(),
                              //   ),
                              // ),
                              initialCountryCode: 'PK',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin:EdgeInsets.only(top: height*0.02),
                      height: height*0.04,
                      child: FloatingActionButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => confirmfull()),
                          );
                        },
                        child: Icon(Icons.arrow_forward),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
