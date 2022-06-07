import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/pages/profile/edit_password.dart';
import 'package:event_management_app/pages/profile/edit_profile_page.dart';
import 'package:event_management_app/services/authentication_service.dart';
import 'package:event_management_app/services/user_services.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final akses = AuthServices.getCurrentEmail();
  final userDocId = UserServices.getUserIdDoc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 46, 45, 45)),
        title: const Text.rich(
                TextSpan(
                  text: "EVENT",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 46, 45, 45),
                    fontSize: 18,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w400
                  ),
                children: [
                  TextSpan(
                  text: "APP",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 46, 45, 45),
                    fontSize: 18,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700
                    
                  ),
                  ),
                ],
                ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(
              Icons.notifications_none,
              color: Color.fromARGB(255, 46, 45, 45),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: akses == "Peserta" ? AppDrawer() : OrganizerAppDrawer(),
      body: SafeArea(
        child: StreamBuilder<DocumentSnapshot>(
          stream: users.doc("$userDocId").snapshots(),
          builder: (_, snapshot) {
            return (snapshot.hasData)
              ? Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 54, 60, 79),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profil Kamu",
                              style: TextStyle(
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                letterSpacing: 0.2,
                                color: Color.fromARGB(255, 54, 60, 79)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Nama:",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Anonymous",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Role",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Peserta",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Email:",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Anonymous@email.com",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "No. Telp:",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "0856673647324",
                              style: TextStyle(
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontFamily: "Quicksand",
                                fontSize: 15,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextButton(
                              onPressed: ()=> Get.to(() => EditProfile()), 
                              child: Text(
                                "Ubah profil",
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextButton(
                              onPressed: () => Get.to(() => EditPass()), 
                              child: Text(
                                "Ubah password",
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.33,
                  top: MediaQuery.of(context).size.height * 0.055,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: Color.fromARGB(255, 226, 225, 225),
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: ClipOval(child: Image.asset("assets/images/user.png")),
                    ),
                  )
                )
              ],
            ) : Text("Loading"); 
          },
        ),
      ),
    );
  }
}