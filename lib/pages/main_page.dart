import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/util/get_date.dart';
import 'package:event_management_app/pages/detail_page.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {

  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
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
      drawer: AppDrawer(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          children: [
            Text(
              "Temukan Eventmu !",
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
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Row(
                      children: [
                        Icon(
                          Icons.explore_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Semua",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromARGB(255, 226, 225, 225),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      )
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_note_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Desain",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromARGB(255, 226, 225, 225),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      )
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Row(
                      children: [
                        Icon(
                          Icons.smartphone_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Technology",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromARGB(255, 226, 225, 225),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      )
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (() => Get.to(DetailPage("",""))),
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
    );
  }
}