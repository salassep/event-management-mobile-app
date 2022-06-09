import 'package:event_management_app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/user_controller.dart';

class EditProfile extends StatelessWidget {

  final UserUpdateController _userUpdateController = Get.put(UserUpdateController());

  var isEmailChange = false;
  
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
                        controller: _userUpdateController.newNameController,
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
                        controller: _userUpdateController.newTelpController,
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
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
                        controller: _userUpdateController.newEmailController,
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
                        onChanged: (value) {
                          isEmailChange = !isEmailChange;
                        },
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  if(isEmailChange)                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(50, 54, 60, 79),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        controller: _userUpdateController.passwordController,
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.visibility), onPressed: () {}),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w300),
                            border: InputBorder.none,
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                      height: 30 ,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          _userUpdateController.onPressed();
                          Get.back();
                        },
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
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
