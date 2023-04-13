import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  launchUrl(String url) async
  {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not load $url";
    }
  }

  mypro(lang, title, desc,From,To){
    return   Container(
      height: 250,
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
                  Text(From, style: TextStyle(
                      color: Colors.white70
                  ),
                  ),
                  Icon(Icons.line_axis,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width:4,
                  ),
                  Text(To, style: TextStyle(
                      color: Colors.white70
                  ),
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){const url = 'https://www.linkedin.com/in/riya-kasaudhan-25b168221/';
                  launch(url);}, icon: Icon(
                    FontAwesomeIcons.linkedin,color: Colors.white,
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
        title: Text('Experience'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mypro('Android Developer', 'SOS TECH Inc', 'Here I am working as a associate android developer', 'Feb 2023','present'),
              mypro('Android Developer', 'CodeClause', 'Here i am working as a intern','Feb 2023','March 2023'),
              mypro('Android Developer', 'Oasis Infobyte', 'Here i am working as a intern', 'Feb 2023','March 2023'),
              mypro('Android Developer', 'Quencil Tech Traning', 'Here i am working as a Associate Android Developer intern', 'Jan 2023','March 2023'),
              mypro('Management Team ', 'Skillark Pvt Ltd', 'Managining the tech team', 'Feb 2022','May 2022'),
            ],
          ),
        ),
      ),
    );


  }
}
