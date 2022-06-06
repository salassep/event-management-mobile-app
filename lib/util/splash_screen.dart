import 'dart:async';
import 'package:event_management_app/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart(){
    var waktu = const Duration(seconds: 3);
    return Timer(waktu, (){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => LandingPage()),
        );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 200,
          height: 200,
        ),
      ), 
    );
  }
}
