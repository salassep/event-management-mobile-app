import 'package:event_management_app/login.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(159, 252, 157, 157),
      body: ListView(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Container(
              child: Image.asset(
                'assets/images/logo.png',
                height: 250,
                width: 100,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 15),
            child: Text(
              'Organize your own event',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            child: Text(
              'Simpan dan organisir segala event anda\nTidak ada lagi catatan event yang berhambur,\nSemua bisa dilakukan di tangan anda melalui aplikasi ini, sekarang!',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          Container(
          // // padding: const EdgeInsets.only(top: 50, left: 160, right: 160),
            margin: EdgeInsets.only(top:55),
            child :ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Signin(),
                  ),
                );
              },
            child: Text('Coba Sekarang'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                shadowColor: Colors.black,
                minimumSize: Size(500, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
