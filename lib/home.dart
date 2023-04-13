import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchieve(num,type){
    return  Row( children:[
         Text(num,
        style: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold)),
    Container(
    margin: EdgeInsets.only(top: 10),
    child:  Text(type),
    )

    ],
    );
  }

  mySpec(icon,tech){
    return  Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [Icon
              (icon,
              color: Colors.white,
            ),
              SizedBox(
                height: 10,
              ),
              Text(tech,style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),)
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
          child: Text('Projects',style: TextStyle(color: Colors.white),), onPressed: (){
            Navigator.pushNamed(context, 'project');
            },
            ),
              value: 1,
            ),
            PopupMenuItem(child: TextButton(
              child: Text('About me',style: TextStyle(color: Colors.white),), onPressed: (){
              Navigator.pushNamed(context,'about');
            },
            ),
              value: 1,
            ),
            PopupMenuItem(child: TextButton(
              child: Text('Contact Me Here',style: TextStyle(color: Colors.white),), onPressed: (){
              Navigator.pushNamed(context,'Contact');
            },
            ),
              value: 1,
            ),
            PopupMenuItem(child: TextButton(
              child: Text('Experience',style: TextStyle(color: Colors.white),), onPressed: (){
              Navigator.pushNamed(context,'Experience');
            },
            ),
              value: 1,
            )
        ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                      begin: Alignment.center,
                        end: Alignment.bottomCenter
                        ,colors: [Colors.black,Colors.transparent])
                        .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                    blendMode: BlendMode.dstIn,
              child: Image.asset('assets/img.png',
                  height: 400,
                  fit: BoxFit.contain)
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.49),
                child: Column(
                  children: [Text('Riya Kasaudhan',style: TextStyle(
                    color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold
                  ),
                  ),
                    SizedBox(
                      height: 1,
                    ),
                    Text('Android Developer',style: TextStyle(
                        color: Colors.white,fontSize: 20),),
                    SizedBox(
                      height: 1,
                    ),
                    //Text('Software Developer',style: TextStyle(
                       // color: Colors.white,fontSize: 20
                    //),),
              ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(

            margin: EdgeInsets.only(left: 15,right:15, top:30),
            height: 740,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchieve('10', 'project'),
                    myAchieve('7.9', 'CGPA'),
                    myAchieve('B.Tech', 'Qualification')
                  ],
            ),
                SizedBox(
                  height: 40,
                ),
                Text('Specialized In',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Android'),
                        mySpec(FontAwesomeIcons.java, 'Java'),
                        mySpec(Icons.flutter_dash, 'Flutter')

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.css, 'Css'),
                        mySpec(Icons.html, 'Html'),
                        mySpec(FontAwesomeIcons.linux, 'Linux')

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.database, 'FireBase'),
                        mySpec(FontAwesomeIcons.java, 'OOPs'),
                        mySpec(FontAwesomeIcons.database, 'SQL')


                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mySpec(FontAwesomeIcons.database, 'Cloud FireStore'),
                    mySpec(FontAwesomeIcons.android, 'Retrofit Api'),
                    mySpec(FontAwesomeIcons.google, 'Google Map')

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mySpec(FontAwesomeIcons.github, 'Github'),
                    mySpec(FontAwesomeIcons.android, 'Rest Api '),
                    mySpec(FontAwesomeIcons.googlePay, 'Pay Gateway')

                  ],
                )
            ],
            ),
          );
        },
      ),
    );
  }
  }

