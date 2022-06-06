import 'package:event_management_app/pages/main_page.dart';
import 'package:event_management_app/pages/sign_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 54, 60, 79),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Pengaturan Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w600
                  ),
                ),
                // IconButton(
                //   icon: Icon(Icons.person_add_alt_1_rounded),
                //   tooltip: 'Regist Icon',
                //   onPressed: (){
                //     Navigator.push(context, MaterialPageRoute(builder:(context) => daftar()),);
                //   },
                // ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   height: 200,
                  //   width: MediaQuery.of(context).size.width * 0.8,
                  //   margin: EdgeInsets.only(
                  //       left: MediaQuery.of(context).size.width * 0.09),
                  //   // child: Image.asset(
                  //   //   "assets/images/logo.png",
                  //   //   scale: 2,
                  //   // ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Nama Lengkap",
                      style: TextStyle(
                        fontFamily: "Quicksand"
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only( left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(50, 54, 60, 79),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w300),
                            border: InputBorder.none,
                            suffixIcon: const SizedBox(),
                        ),
                      ),
                    )
                  ),
                   const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "No. Telpon",
                      style: TextStyle(
                        fontFamily: "Quicksand"
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(50, 54, 60, 79),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "No. Telpon",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w300),
                          border: InputBorder.none,
                          suffixIcon: const SizedBox(),
                        ),
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Alamat Email",
                      style: TextStyle(
                        fontFamily: "Quicksand"
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(50, 54, 60, 79),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: "Alamat Email",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w300),
                          border: InputBorder.none,
                          suffixIcon: const SizedBox(),
                        ),
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   SizedBox(
                      height: 30 ,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => Get.to(Home()),
                        child: Text(
                          'Simpan',
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
                  // Center(
                  //   child: Container(
                  //     margin: EdgeInsets.only(
                  //         top: MediaQuery.of(context).size.height * 0.08),
                  //     child: Text.rich(
                  //       TextSpan(
                  //         text: "Don't already Have an account? ",
                  //         style: const TextStyle(
                  //           color: Colors.black87,
                  //           fontSize: 15,
                  //           fontFamily: "Quicksand",
                  //           fontWeight: FontWeight.w400
                  //         ),
                  //         children: [
                  //           TextSpan(
                  //               text: "Sign Up",
                  //               style: const TextStyle(
                  //                 color: Colors.blue,
                  //                 fontSize: 15,
                  //                 fontFamily: "Quicksand",
                  //                 fontWeight: FontWeight.w400
                  //               ),
                  //               recognizer: TapGestureRecognizer()..onTap = (){
                  //                 Navigator.push(context, MaterialPageRoute(builder:(context) => daftar()),);
                  //               } 
                  //           ),
                  //         ]
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
