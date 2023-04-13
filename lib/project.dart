import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {

  launchUrl(String url) async
  {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not load $url";
    }
  }

    mypro(lang, title, desc,star){
    return   Container(
      height: 220,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(lang,style: TextStyle(color: Colors.white70,
                fontSize: 18
            ),
            ),
              SizedBox(
                height: 15,
              ),
              Text(title,style: TextStyle(color: Colors.white70,
                  fontSize: 30,fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(desc,style: TextStyle(color: Colors.white70,
                  fontSize: 16
              ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width:4,
                  ),
                  Text(star, style: TextStyle(
                      color: Colors.white70
                  ),
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){const url = 'https://github.com/Riyasans';
                  launch(url);}, icon: Icon(
                    FontAwesomeIcons.github,color: Colors.white,
                  ))
                ],
              )
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
      title: Text('Projects'),
    ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             mypro('Flutter', 'Protfolio', 'Here my protfolio project', '10'),
              mypro('Android', 'Quoets', 'Using Java & Xml', '9'),
              mypro('Android', 'Google Map', 'Google map api', '10'),
              mypro('Android', 'Video Calling App', 'Java & calling api', '8'),
              mypro('Android', 'Unit converter', 'Java & Xml', '9'),
             // mypro('Flutter', 'Click 2 Code', 'AN Online Compiler', '10')
            ],
          ),
        ),
      ),
    );
  }
}
