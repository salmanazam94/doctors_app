import 'package:city_wide/bottombar.dart';
import 'package:city_wide/finddoctor.dart';
import 'package:flutter/material.dart';

class clinic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return clinicfull();
  }
}
class clinicfull extends StatefulWidget {


  @override
  _clinicfullState createState() => _clinicfullState();
}

class _clinicfullState extends State<clinicfull> {
  // final List<String> images =<String>[
  //   'https://image.shutterstock.com/image-photo/psychotherapist-working-young-woman-light-260nw-1333907474.jpg',
  //   'https://ichef.bbci.co.uk/news/976/cpsprodpb/C9DA/production/_107047615_dentist2.jpg',
  //   'https://www.healthstatus.com/wp-content/uploads/2020/06/eye-optometrist-exam-ophthalmologist.jpg',
  //   'https://synergynaples.com/wp-content/uploads/2018/04/bigstock-175358467.jpg',
  //   'https://img.etimg.com/photo/msid-74747053,quality-100/for-miles-a-great-bodyweight-workout-would-include-squats-push-ups-walking-lunges-.jpg',
  //   'https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'
  // ];
  // final List<String> text =<String>[
  //   'psychology',
  //   'Dentist',
  //   'Eye Specialist',
  //   'Bone',
  //   'Work Out',
  //   'Food'
  // ];
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height =MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Container(
            height: height*1.0,
            width: width*1.0,
            child: Container(
              margin: EdgeInsets.only(top: height*0.05,left: width*0.04),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('What Do You',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height*0.03
                  ),),
                  Text('Want TO Consult?',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height*0.03
                  ),),
                  Text('You Can Choose More Then One?',style: TextStyle(
                    color: Colors.grey
                  ),),
                  SizedBox(height: height*0.12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: width*0.01,right: width*0.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height*0.06,
                                  backgroundImage: NetworkImage('https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'),
                                ),
                                Text('Food')
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height*0.06,
                                  backgroundImage: NetworkImage('https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'),
                                ),
                                Text('Food')
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height*0.06,
                                  backgroundImage: NetworkImage('https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'),
                                ),
                                Text('Food')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.04,),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: width*0.01,right: width*0.08),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: height*0.06,
                              backgroundImage: NetworkImage('https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'),
                            ),
                            Text('Food')
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: height*0.06,
                              backgroundImage: NetworkImage('https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'),
                            ),
                            Text('Food')
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: height*0.06,
                              backgroundImage: NetworkImage('https://assets.bupa.co.uk/~/media/images/healthmanagement/blogs/700-350/2018/march-18/broccoli-700-300.jpg'),
                            ),
                            Text('Food')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.08,),
                  Container(
                    height:height*0.2,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => bottombar()
                          ),
                        );
                      },
                      child: Text('Continue',style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: height*0.02,
                      ),),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        minimumSize: MaterialStateProperty.all(Size(120.0,50.0)),
                      ),
                    ),
                  )
                  // SizedBox(height: height*0.12,),
                  // Container(
                  //   height: height*0.4,
                  //   width: width*0.9,
                  //   child: ListView.builder(
                  //     itemCount: images.length,
                  //     scrollDirection:Axis.horizontal,
                  //     itemBuilder: (BuildContext context, int index){
                  //       return Container(
                  //         margin: EdgeInsets.only(left: width*0.04),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //           Row(
                  //             children: [
                  //               CircleAvatar(
                  //                 radius: height*0.06,
                  //                 backgroundImage: NetworkImage(images[index]),
                  //               ),
                  //               // Column(
                  //               //   children: [
                  //               //     Text(text[index]),
                  //               //   ],
                  //               // )
                  //             ],
                  //           ),
                  //           SizedBox(height: height*0.05,),
                  //             Text(text[index]),
                  //           ],
                  //         ),
                  //       );
                  //     }
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

