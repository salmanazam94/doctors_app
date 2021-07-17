import 'package:flutter/material.dart';

class subscribe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return subscriptionfull();
  }
}

class subscriptionfull extends StatefulWidget {
  @override
  _subscriptionfullState createState() => _subscriptionfullState();
}

class _subscriptionfullState extends State<subscriptionfull> {
  final List<String> text = <String>[
    'Dr.Haroon',
    'Dr.Haroon',
    'Dr.Haroon',
    'Dr.Haroon',
    'Dr.Haroon',
    'Dr.Haroon'
  ];
  final List<String> text1 = <String>[
    '15 / 30 days',
    '15 / 30 days',
    '15 / 30 days',
    '15 / 30 days',
    '15 / 30 days',
    '15 / 30 days',
  ];

  final List<String> text2 = <String> [
    'Detail'
    'Detail',
    'Detail',
    'Detail',
    'Detail',
    'Detail',
  ];

  final List<String> images = <String> [
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300'
  ];

  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,
            color: Colors.black,)),
        title:
        Center(
          child: Text('Subscription',style: TextStyle(
            color: Colors.black
          ),),
        ),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height*1.0,
               width: width*1.0,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, index){
                      return Container(
                        margin: EdgeInsets.only(left: width*0.07,right: width*0.07),
                        height:  height*0.25,
                        width: width*1.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60))
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top: height*0.04,left: width*0.05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(text[index],style: TextStyle(
                                  fontSize: height*0.025
                                ),),
                                Text(text1[index]),
                                Container(
                                  margin: EdgeInsets.only(top: height*0.02,left: width*0.02,right: width*0.05),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: (){},
                                        child: Text(text2[index]),
                                      ),
                                      Image.network(images[index],height: height*0.1,
                                      width: width*0.15,),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

