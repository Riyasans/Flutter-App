import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyAbout extends StatefulWidget {


  const MyAbout({Key? key}) : super(key: key);
  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {

  mypro(lang, title, desc){
    return   Container(
      height: MediaQuery.of(context).size.height*0.9,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(lang,style: TextStyle(color: Colors.white70,
                fontSize: 18,fontWeight: FontWeight.bold,
            ),
            ),
              SizedBox(
                height: 15,
              ),
              Text(title,style: TextStyle(color: Colors.white70,
                  fontSize: 16,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(desc,style: TextStyle(color: Colors.white70,
                  fontSize: 16
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mypro('Hey there', 'I Am Riya Kasaudhan,a Self-Taught, Passionate Android Developer',
                  'I Am 22 Year Old Young , I am from Lucknow . now i am purshowing B.tech from Babu Banarasi Das Engineering College.i have 1 year of Experience as a Android Developer. '
                  ),
            ],
          ),
        ),
      ),
    );

  }
}


