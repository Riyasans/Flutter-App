import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  launchUrl(String url) async
  {
    if (await canLaunch(url)){
      await launch(url);
    }else{
      throw "could not launch $url";
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Contact'),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
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
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
                child: Column(
                  children: [
                    Text('Hello I am..',style: TextStyle(
                      color: Colors.white, fontSize: 30,
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Riya Kasaudhan',style: TextStyle(
                        color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Android Developer',style: TextStyle(
                        color: Colors.white,fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 120,
                      child: TextButton(onPressed: (){const url = 'https://drive.google.com/file/d/1jG0_A5FLjAEuNerzLAag90CqLSWdKCnb/view?usp=drivesdk';
                      launch(url);}, child: Text('Resume'),
                        style: TextButton.styleFrom(backgroundColor: Colors.white,
                            primary: Colors.black),
                      ),

                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed:() {
                          const url = 'https://instagram.com/riyakasaudhan84190?igshid=MTIzZWQxMDU=';
                          launch(url);
                        }, icon: Icon(
                          FontAwesomeIcons.instagram,color: Colors.white,
                        )),
                        IconButton(onPressed: (){
                          const url = 'https://www.linkedin.com/in/riya-kasaudhan-25b168221/';
                          launch(url);
                        }, icon: Icon(
                          FontAwesomeIcons.linkedin,color: Colors.white,
                        )),
                        IconButton(onPressed: (){
                          const url = 'https://github.com/Riyasans';
                          launch(url);
                        }, icon: Icon(
                          FontAwesomeIcons.github,color: Colors.white,
                        )),
                        IconButton(onPressed: (){
                          const url = 'https://twitter.com/RiyaKasaudhan4?t=gZ8zczpO07jaPARNVsRw5Q&s=09';
                          launch(url);
                        }, icon: Icon(
                          FontAwesomeIcons.twitter,color: Colors.white,
                        )),
                        IconButton(onPressed: (){
                          const url = 'https://www.facebook.com/shree.kasaudhan.5?mibextid=ZbWKwL';
                          launch(url);}, icon: Icon(
                          FontAwesomeIcons.facebook,color: Colors.white,
                        )),

                      ],),

                   Container(
                     child:
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:[Text('Let`s Have a Chat ',style: TextStyle(
                         color: Colors.white,fontSize: 15),
                     ),
                     ],
                   )
                   ),

                    Container(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail,color: Colors.white,),
                          Text('shri333777@gmail.com',style: TextStyle( color: Colors.white,fontSize: 18),),
                        ],
                      ),
                    ),

                    Container(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mobile_friendly,color: Colors.white,),
                         Text('9137580280',style: TextStyle( color: Colors.blue,fontSize: 18),)
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
