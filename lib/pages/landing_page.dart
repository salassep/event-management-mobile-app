import 'package:event_management_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            height: 400,
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Color.fromARGB(200, 54, 60, 79),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Container(
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Organize your own event !',
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 23,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            child: Text(
              'Simpan dan organisir segala event anda\nTidak ada lagi catatan event yang berhambur,\nSemua bisa dilakukan di tangan anda melalui aplikasi ini, sekarang!',
              style: TextStyle(
                fontSize: 13,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: () => Get.to(Signin()),
                child: Text(
                  'Mulai',
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w600
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color.fromARGB(255, 54, 60, 79),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
