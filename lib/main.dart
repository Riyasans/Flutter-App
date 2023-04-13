

import 'package:flutter/material.dart';
import 'package:portfolio_app/Contact.dart';
import 'package:portfolio_app/Experience.dart';
import 'package:portfolio_app/about.dart';
import 'package:portfolio_app/home.dart';
import 'package:portfolio_app/project.dart';
import 'package:url_launcher/link.dart';



void main() {
  runApp( MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home':(context) => MyHome(),
      'about':(context) => MyAbout(),
      'project':(context) => MyProjects(),
      'Contact':(context) => Contact(),
      'Experience':(context) => Experience(),
    },
  ));

}



