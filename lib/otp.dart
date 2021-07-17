import 'package:city_wide/otpnotrecieved.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
class onetimepswrd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return otpfull();
  }
}
class otpfull extends StatefulWidget {

  @override
  _otpfullState createState() => _otpfullState();
}

class _otpfullState extends State<otpfull> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
          child: Column(
            children: [
              Container(
                height: height*0.8,
                width: width*1.0,
                child: Container(
                  margin: EdgeInsets.only(left: width*0.04),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Please Verification!',
                        style:TextStyle(
                          fontSize: height*0.03
                        ) ,),
                      Text('Insert Your OTP To Continue',style: TextStyle(
                        color: Colors.grey
                      ),),

                      Container(
                        margin: EdgeInsets.only(top: height*0.15,left: width*0.05, right: width*0.13),
                        width: width*0.9,
                        child: PinFieldAutoFill(
                          decoration: UnderlineDecoration(
                            textStyle: TextStyle(fontSize: 20, color: Colors.black),
                            colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                          ),
                          codeLength: 4,
                          // onCodeSubmitted: (code) {},
                          // onCodeChanged: (code) {
                          //   if (code.length == 6) {
                          //     FocusScope.of(context).requestFocus(FocusNode());
                          //   }
                          // },
                        )
                        ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.05,left: width*0.05, right: width*0.13),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Wrong OTP Code', style: TextStyle(
                              fontSize: height*0.02
                            ),),
                            Text('Resend Code',
                              style: TextStyle(
                                  fontSize: height*0.02
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height:height*0.3,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => userfull()
                              ),
                            );
                          },
                          child: Text('Continue',style: TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: height*0.02,
                          ),),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                            minimumSize: MaterialStateProperty.all(Size(120.0,50.0)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
    );
  }
}
