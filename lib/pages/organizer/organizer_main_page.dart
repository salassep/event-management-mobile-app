import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/pages/organizer/add_event.dart';
import 'package:event_management_app/services/event_services.dart';
import 'package:event_management_app/services/user_services.dart';
import 'package:event_management_app/util/get_date.dart';
import 'package:event_management_app/pages/detail_page.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OrganizerHome extends StatelessWidget {

  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    userController.getId();
    userController.pleaseFill();
    var date = GetDate();
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
      drawer: OrganizerAppDrawer(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(18, 0, 18, 60),
          children: [
            Text(
              "Buat Eventmu !",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700,
                fontSize: 22
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date,
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 15
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: "Cari eventmu disini ...",
                  hintStyle: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 15
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.grey
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() =>
              StreamBuilder<QuerySnapshot>(
                stream: events.where('idOrganizer', isEqualTo: userController.idUser.value).snapshots(),
                builder: (_, snapshot) {
                  return (snapshot.hasData) 
                    ? ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot doc = snapshot.data!.docs[index];
                        return GestureDetector(
                          onTap: () => Get.to(() => DetailPage(doc.id, doc['price'])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Color.fromARGB(255, 226, 225, 225),
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        "assets/images/logo.png",
                                        width: 150,
                                        height: 150,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      bottom: 15,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                                        color: Color.fromARGB(255, 54, 60, 79),
                                        child: Text(
                                          "${doc['schedule']['day']} - ${doc['schedule']['month']} - ${doc['schedule']['year']} | ${doc['schedule']['clock']}.${doc['schedule']['minute']}",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Quicksand",
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                          ),
                                        ),
                                      )
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                doc['title'],
                                style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              )
                            ],
                          ),
                        );
                      },
                    ) : Text ("Mengambil data...");
                }
              ), 
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 54, 60, 79),
        label: Row(
          children: [
            Icon(
              Icons.add,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Buat Event",
              style: TextStyle(
                letterSpacing: 0,
                fontFamily: "Quicksand",
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
        onPressed: () => Get.to(() => AddEvent()),
      ),
    );
  }
}