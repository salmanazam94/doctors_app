import 'package:flutter/material.dart';

class consult extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return consultfull();
  }
}

class consultfull extends StatefulWidget {
  @override
  _consultfullState createState() => _consultfullState();
}

class _consultfullState extends State<consultfull> {
  final List<String> text = <String>[
    'Today',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Today',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Today',
    'Sun',
    'Mon',
    'Tue',
    'Thu',
    'Fri',
    'Today',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Today',
    'Sun',
    'Mon',
    'Tue',
  ];
  final List<String> text2 = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];
  final List<String> text3 = <String>[
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
    '08:00 - 09:00',
  ];
  final List<String> text4 =<String>[
    'Booked',
    'Selected',
    'Booked',
    'Selected',
    'Booked',
    'Selected',
    'Booked',
    'Selected',
  ];
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
        actions: [
          Image.asset('assets/images/calendar.png',
              height: height*0.1,
              width:  width*0.1),
          SizedBox(width:width*0.02,)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: width*0.04),
              height: height*1.0,
              width: width*1.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Your',
                  style: TextStyle(
                    fontSize: height*0.035,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Consult Day',
                  style: TextStyle(
                    fontSize: height*0.035,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Please select the day aand time',
                  style: TextStyle(
                    fontSize: height*0.02,
                    color: Colors.grey
                  ),),
                  Text('before go for consultation day',
                  style: TextStyle(
                    fontSize: height*0.02,
                    color: Colors.grey
                  ),),
                  Container(
                    margin: EdgeInsets.only(top: height*0.02),
                    height: height*0.12,
                    width: width*1.0,
                     child: ListView.builder(
                       itemCount: text.length,
                         scrollDirection: Axis.horizontal,
                         itemBuilder:(BuildContext context,  index){
                          return Container(
                            height: height*0.1,
                            width: width*0.2,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: height*0.01),
                                child: Column(
                                  children: [
                                    Text(text[index],
                                      style: TextStyle(
                                        fontSize: height*0.02
                                      ),),
                                    SizedBox(height: height*0.02,),
                                    Text(text2[index],
                                      style: TextStyle(
                                        fontSize: height*0.03,
                                        fontWeight: FontWeight.bold
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.02),
                    height: height*0.6,
                    width: width*0.9,
                     child: ListView.builder(
                       itemCount: 09,
                         scrollDirection: Axis.vertical,
                         itemBuilder:(BuildContext context,  index){
                          return Container(
                            height: height*0.1,
                            width: width*0.9,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(text3[index],
                                      style: TextStyle(
                                        fontSize: height*0.025,
                                        color: Colors.blueAccent
                                      ),),
                                    Text(text4[index],
                                      style: TextStyle(
                                        fontSize: height*0.025,
                                        color: Colors.black
                                      ),),

                                  ],
                                ),
                              ),
                            ),
                          );
                        } ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.7),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => userfull()
                //     ),
                //   );
                },
                child: Text('Continue',style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: height*0.025,
                ),),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                  minimumSize: MaterialStateProperty.all(Size(160.0,55.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
