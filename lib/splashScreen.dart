import 'dart:async';
import 'package:event_management_app/pages/landingpage.dart';
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
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
        ),
      ), 
    );
  }
}
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Welcome(),
//     );
//   }
// }

// class Welcome extends StatelessWidget {
//   const Welcome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SafeArea(
//           child: SizedBox(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     child: Image.asset(
//                       "assets/images/logo.png", // jangan lupa nyesuaikan kalau ini di ubah
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Spacer(), // membuat ruang kosong
//                       FittedBox(
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Get.to(Signin()); //yang ini untuk masuk ke halaman login
//                           },
//                           style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all<Color>(Colors.pink),
//                             shape:
//                                 MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                 ),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 50.0, vertical: 13.0),
//                             child: Row(
//                               children: <Widget>[
//                                 Text(
//                                   "Login",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 20, 
//                                   ),
//                                 ),
//                                 SizedBox(width: 10),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       FittedBox(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                                 horizontal: 50.0, vertical: 13.0),
//                           alignment: Alignment.center,
//                           child: InkWell(
//                             onTap: () {
//                               Get.to(daftar()); // yang ini untuk masuk ke halaman register
//                             },
//                             child: const Text(
//                               "Register",
//                               style: TextStyle(
//                                 color: Colors.blue,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ),
//                         ),
                        
//                       ),
//                       Spacer(), // membuat ruang kosong
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// yang di bwah ini bisa di hapus





