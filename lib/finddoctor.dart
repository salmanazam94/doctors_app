import 'package:city_wide/doctorinfo.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
class finddoctor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return doctorfull();
  }
}

class doctorfull extends StatefulWidget {

  @override
  _doctorfullState createState() => _doctorfullState();
}

class _doctorfullState extends State<doctorfull> {
  var _rating;
  final List<String> images = <String> [
    'https://st3.depositphotos.com/10654668/13844/i/600/depositphotos_138445604-stock-photo-male-doctor-in-hospital.jpg',
    'https://st3.depositphotos.com/10654668/13844/i/600/depositphotos_138445604-stock-photo-male-doctor-in-hospital.jpg',
    'https://st3.depositphotos.com/10654668/13844/i/600/depositphotos_138445604-stock-photo-male-doctor-in-hospital.jpg',
    'https://st3.depositphotos.com/10654668/13844/i/600/depositphotos_138445604-stock-photo-male-doctor-in-hospital.jpg',
    'https://st3.depositphotos.com/10654668/13844/i/600/depositphotos_138445604-stock-photo-male-doctor-in-hospital.jpg',
  ];
  final List<String> text = <String>[
    'Dr Haroon',
    'Dr Haroon',
    'Dr Haroon',
    'Dr Haroon',
    'Dr Haroon',

  ];
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height*0.4,
                width: width*1.0,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height*0.05,right: 0.1,left: 0.1),
                      height: height*0.06,
                      width: width*0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Find Your Desire Doctor Or Disease',
                          suffixIcon: Icon(Icons.search),
                          fillColor: Color(0xffC1CFDA),
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height*0.05),
                      height: height*0.15,
                      width: width*1.0,
                      child: ListView.builder(
                        itemCount: images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return Container(
                              margin: EdgeInsets.only(left: width*0.04),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius:height* 0.05,
                                        backgroundImage: NetworkImage(images[index]),
                                      ),
                                    ],
                                  ),
                                  Text(text[index])
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: width*0.04),
                      child: Text('Recomended Doctors',
                      style: TextStyle(
                        fontSize: height*0.03,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              ),
              Container(
                height: height*0.6,
                width: width*1.0,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: images.length,
                    itemBuilder:(BuildContext context, int index){
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>infofull()));
                                  },
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(images[index],height: height*0.2, width: width*0.3,
                                      fit: BoxFit.cover,),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0)
                                    ),
                                    margin: EdgeInsets.only(top: height*0.03),
                                  ),
                                ),
                                SizedBox(width: width*0.1,),
                                GestureDetector(
                                  onTap:(){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>infofull()));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Dr Haroon',style: TextStyle(
                                        fontSize: height*0.03
                                      ),),
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
                                            size: height*0.03,
                                          ),
                                          SizedBox(width: width*0.03,),
                                          Text('4.5')
                                        ],
                                      ),
                                      Text('Dentist Specialist Since',style:
                                        TextStyle(
                                          fontSize: height*0.02
                                        ),),
                                      Text('2008 in LBC Hospital.....',style:
                                      TextStyle(
                                          fontSize: height*0.02
                                      ),),
                                    ],
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                            ),
                          ],
                        ),
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
