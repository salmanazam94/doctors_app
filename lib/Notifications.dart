import 'package:flutter/material.dart';

class notify extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return notifull();
  }
}
class notifull extends StatefulWidget {


  @override
  _notifullState createState() => _notifullState();
}

class _notifullState extends State<notifull> {
  final List<String> images =<String>
  [
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
    'https://research.fb.com/wp-content/uploads/2016/11/peopleeric-anderson-7936_finalcrop.jpg?w=300',
  ];
  final List <String> text = <String>[
    'Dr.Mavin sent you a daily tip',
    'Dr.Mavin sent you a daily tip',
    'Dr.Mavin sent you a daily tip',
    'Dr.Mavin sent you a daily tip',
    'Dr.Mavin sent you a daily tip',
    'Dr.Mavin sent you a daily tip',
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
        title: Center(
          child: Text('Notifications',style: TextStyle(
            color: Colors.black
          ),),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: width*0.02,right: width*0.02),
          height:height*0.9 ,
          width: width*1.0,
          child: ListView.builder(
            itemCount: images.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, index ){
                return Container(
                  height: height*0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                  ),
                  margin: EdgeInsets.only(top: height*0.02),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: height*0.03,
                        backgroundImage: NetworkImage(images[index]),
                      ),
                      SizedBox(width: width*0.04,),
                      Text(text[index],
                      style: TextStyle(
                        fontSize: height*0.025
                      ),)
                    ],
                  ),
                );
              } ),
        ),
      ),
    );
  }
}
