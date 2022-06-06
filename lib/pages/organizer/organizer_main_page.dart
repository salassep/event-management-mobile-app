import 'dart:ui';
import 'package:event_management_app/pages/organizer/add_event.dart';
import 'package:event_management_app/util/get_date.dart';
import 'package:event_management_app/pages/detail_page.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OrganizerHome extends StatelessWidget {
  const OrganizerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.symmetric(horizontal: 18),
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
            GestureDetector(
              onTap: () => Get.to(() => DetailPage()),
              child: Container(
                color: Color.fromARGB(255, 226, 225, 225),
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 15,
                      bottom: 15,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                        color: Color.fromARGB(255, 54, 60, 79),
                        child: Text(
                          "27 June | 09.30",
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
            )
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