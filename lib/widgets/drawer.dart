import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/pages/about_page.dart';
import 'package:event_management_app/pages/event_page.dart';
import 'package:event_management_app/pages/login_page.dart';
import 'package:event_management_app/pages/main_page.dart';
import 'package:event_management_app/pages/organizer/organizer_main_page.dart';
import 'package:event_management_app/pages/profile/profile_page.dart';
import 'package:event_management_app/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);

  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 54, 60, 79),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 100.0,
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "assets/images/user.png",
                        height: 50,
                        width: 50,
                      ),
                      onTap: () => Get.to(() => ProfilePage()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "${userController.name.value}\n",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          color: Colors.white
                        ),
                        children: [
                          TextSpan(
                          text: "Peserta",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300
                        ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              child: ListTile(
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Beranda",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => Get.to(() => Home()),
                
              ),
            ),
            Container(
              height: 40,
              child: ListTile(
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.list_alt_rounded,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Eventmu",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => Get.to(() => YourEventPage()),
              ),
            ),
            Container(
              height: 40,
              child: ListTile(
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Tentang",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => Get.to(() => AboutPage()),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            Container(
              height: 40,
              child: ListTile(
                onTap: () {
                  AuthServices.signOut();
                  Get.off(() => Signin());
                },
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Log out",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

}

class OrganizerAppDrawer extends StatelessWidget {
  OrganizerAppDrawer({Key? key}) : super(key: key);

  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 54, 60, 79),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 100.0,
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        userController.image_url.value,
                        height: 50,
                        width: 50,
                      ),
                      onTap: () => Get.to(() => ProfilePage()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "${userController.name.value}\n",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          color: Colors.white
                        ),
                        children: [
                          TextSpan(
                          text: "Organizer",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300
                        ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              child: ListTile(
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Beranda",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => Get.to(() => OrganizerHome()),
              ),
            ),
            Container(
              height: 40,
              child: ListTile(
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Tentang",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => Get.to(() => AboutPage()),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            Container(
              height: 40,
              child: ListTile(
                onTap: () {
                  AuthServices.signOut();
                  Get.off(() => Signin());
                },
                title: Align(
                  alignment: Alignment(-1.12,-0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 20
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Log out",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}