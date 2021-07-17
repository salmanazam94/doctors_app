import 'package:city_wide/otp.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class againnumber extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return confirmfull();
  }
}

class confirmfull extends StatefulWidget {

  @override
  _confirmfullState createState() => _confirmfullState();
}

class _confirmfullState extends State<confirmfull> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          height: height*1.0,
          width: width*1.0,
          child: Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: width*0.05),
            child: Column(
              children: [
                Text('Confirm Your Number',
                  style: TextStyle(
                    fontSize: height*0.03,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(
                  height: height*0.08,
                ),
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
                ),
                SizedBox(height: height*0.06,),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => otpfull()
                        ),
                      );
                    },
                    child: Text('Continue',style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: height*0.02,
                    ),),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

