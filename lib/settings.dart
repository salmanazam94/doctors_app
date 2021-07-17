import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';


class mysettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return settingsfull();
  }
}

class settingsfull extends StatefulWidget {

  @override
  _settingfullState createState() => _settingfullState();
}

class _settingfullState extends State<settingsfull> {
  bool isChecked = false;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height  = MediaQuery.of(context).size.height;
    width   = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Center(
          child: Text('Settings',
            style:TextStyle(
              color: Colors.black
            ),),
        ),
      ),
      body: Container(
        height: height*1.0,
        width: width*1.0,
        margin: EdgeInsets.only(left: width*0.03,right: width*0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notifications',
                  style: TextStyle(
                    fontSize: height*0.025
                  ) ,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: CustomSwitchButton(
                    backgroundColor: Colors.grey,
                    unCheckedColor: Colors.white,
                    animationDuration: Duration(milliseconds: 400),
                    checkedColor: Colors.blueAccent,
                    checked: isChecked,
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ask before buy',
                  style: TextStyle(
                    fontSize: height*0.025
                  ) ,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: CustomSwitchButton(
                    backgroundColor: Colors.grey,
                    unCheckedColor: Colors.white,
                    animationDuration: Duration(milliseconds: 400),
                    checkedColor: Colors.blueAccent,
                    checked: isChecked,
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Color blind mode',
                  style: TextStyle(
                    fontSize: height*0.025
                  ) ,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: CustomSwitchButton(
                    backgroundColor: Colors.grey,
                    unCheckedColor: Colors.white,
                    animationDuration: Duration(milliseconds: 400),
                    checkedColor: Colors.blueAccent,
                    checked: isChecked,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
