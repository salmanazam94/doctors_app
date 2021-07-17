import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
class locate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Locationfull();
  }
}
class Locationfull extends StatefulWidget {


  @override
  _LocationfullState createState() => _LocationfullState();
}

class _LocationfullState extends State<Locationfull> {
  var _rating;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 1.0,
            width: width * 1.0,
            child: Image.asset(
              'assets/images/map.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height*0.04,left: width*0.04),
            child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
          ),
          Container(

            margin: EdgeInsets.only(top: height*0.5,left: width*0.1),
            height: height*0.35,
            width: width*0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffD9F0FF)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width*0.04,top: height*0.04),
                  height: height*0.1,
                  width: width*0.15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network('https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
                      fit: BoxFit.cover,),
                  ),
                ),
                Container(
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

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: height*0.9),
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.white,
              child: Icon(Icons.close,color: Colors.black,),
            ),
          )
        ],
      ),
    );
  }
}
