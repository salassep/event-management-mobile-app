import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/pages/detail_page.dart';
import 'package:event_management_app/services/event_services.dart';
import 'package:event_management_app/services/user_event_services.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourEventPage extends StatelessWidget {

  final UserController _userController = Get.find();

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
      drawer: AppDrawer(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          children: [
            Text(
              "Event kamu",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: Color.fromARGB(255, 54, 60, 79),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DefaultTabController(
              length: 3, 
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color.fromARGB(50, 54, 60, 79))
                      )
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Color.fromARGB(255, 226, 225, 225),
                        border: Border(
                          bottom: BorderSide(color: Color.fromARGB(255, 54, 60, 79))
                        )
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "Favorit",
                            style: TextStyle(
                              color: Color.fromARGB(255, 54, 60, 79),
                              fontFamily: "Quicksand",
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Akan datang",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 54, 60, 79),
                              fontFamily: "Quicksand",
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Selesai",
                            style: TextStyle(
                              color: Color.fromARGB(255, 54, 60, 79),
                              fontFamily: "Quicksand",
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: TabBarView(
                      children: [
                          Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            children: _userController.userFavoriteEvents.value.map(
                              (e) => FutureBuilder<DocumentSnapshot>(
                                future: events.doc(e.toString()).get(),
                                builder: (_, snaphsot) {
                                  if(snaphsot.hasData){
                                    DateTime date = DateTime.now();
                                    var parsedDate = DateTime.parse('${snaphsot.data!.get("schedule")["year"]}-${snaphsot.data!.get("schedule")["month"].toString().padLeft(2,"0")}-${snaphsot.data!.get("schedule")["day"].toString().padLeft(2,"0")} ${snaphsot.data!.get("schedule")["clock"].toString().padLeft(2,"0")}:${snaphsot.data!.get("schedule")["minute"].toString().padLeft(2,"0")}:00.000');                              
                                    return GestureDetector(
                                    onTap: () {
                                      Get.to(() => DetailPage(snaphsot.data!.id, snaphsot.data!.get('price')));
                                    } ,
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: ListTile(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color.fromARGB(50, 0, 0, 0)
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        title: Text(
                                          snaphsot.data!.get("title"),
                                          style: TextStyle(
                                            fontFamily: "Quicksand",
                                            fontWeight: FontWeight.w800
                                          ),
                                        ),
                                        subtitle: Text(
                                          "${snaphsot.data!.get("schedule")["dayName"]}, ${snaphsot.data!.get("schedule")["day"].toString().padLeft(2,'0')}-${snaphsot.data!.get("schedule")["month"].toString().padLeft(2,'0')}-${snaphsot.data!.get("schedule")["year"]}",
                                          style: TextStyle(
                                            fontFamily: "Quicksand",
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        trailing: Text(
                                          "${snaphsot.data!.get("schedule")["clock"].toString().padLeft(2,'0')}:${snaphsot.data!.get("schedule")["minute"].toString().padLeft(2,'0')}",
                                          style: TextStyle(
                                            fontFamily: "Quicksand",
                                            fontSize: 18
                                          ),
                                        ),
                                      ),
                                    ),
                                    );
                                  } else {
                                    return Text("Mengambil data...");
                                  }
                                }
                              )
                            ).toList(),
                          )
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            children: _userController.userEvents.value.map(
                              (e) => FutureBuilder<DocumentSnapshot>(
                                future: events.doc(e.toString()).get(),
                                builder: (_, snaphsot) {
                                  if(snaphsot.hasData){
                                    DateTime date = DateTime.now();
                                    var parsedDate = DateTime.parse('${snaphsot.data!.get("schedule")["year"]}-${snaphsot.data!.get("schedule")["month"].toString().padLeft(2,"0")}-${snaphsot.data!.get("schedule")["day"].toString().padLeft(2,"0")} ${snaphsot.data!.get("schedule")["clock"].toString().padLeft(2,"0")}:${snaphsot.data!.get("schedule")["minute"].toString().padLeft(2,"0")}:00.000');
                                    
                                    if(date.isBefore(parsedDate)){
                                     return GestureDetector(
                                      onTap: () {
                                        Get.to(() => DetailPage(snaphsot.data!.id, snaphsot.data!.get('price')));
                                      } ,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: ListTile(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Color.fromARGB(50, 0, 0, 0)
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                          ),
                                          title: Text(
                                            snaphsot.data!.get("title"),
                                            style: TextStyle(
                                              fontFamily: "Quicksand",
                                              fontWeight: FontWeight.w800
                                            ),
                                          ),
                                          subtitle: Text(
                                            "${snaphsot.data!.get("schedule")["dayName"]}, ${snaphsot.data!.get("schedule")["day"].toString().padLeft(2,'0')}-${snaphsot.data!.get("schedule")["month"].toString().padLeft(2,'0')}-${snaphsot.data!.get("schedule")["year"]}",
                                            style: TextStyle(
                                              fontFamily: "Quicksand",
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                          trailing: Text(
                                            "${snaphsot.data!.get("schedule")["clock"].toString().padLeft(2,'0')}:${snaphsot.data!.get("schedule")["minute"].toString().padLeft(2,'0')}",
                                            style: TextStyle(
                                              fontFamily: "Quicksand",
                                              fontSize: 18
                                            ),
                                          ),
                                        ),
                                      ),
                                     );
                                    } else {
                                      return Text(
                                        "(Belum ada event yang anda ikuti)",
                                        style: TextStyle(
                                          fontFamily: "Quicksand"
                                        ),
                                      );
                                    }

                                  } else {
                                    return Text("Mengambil data...");
                                  }
                                }
                              )
                            ).toList(),
                          )
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            children: _userController.userEvents.value.map(
                              (e) => FutureBuilder<DocumentSnapshot>(
                                future: events.doc(e.toString()).get(),
                                builder: (_, snaphsot) {
                                  if(snaphsot.hasData){
                                    DateTime date = DateTime.now();
                                    var parsedDate = DateTime.parse('${snaphsot.data!.get("schedule")["year"]}-${snaphsot.data!.get("schedule")["month"].toString().padLeft(2,"0")}-${snaphsot.data!.get("schedule")["day"].toString().padLeft(2,"0")} ${snaphsot.data!.get("schedule")["clock"].toString().padLeft(2,"0")}:${snaphsot.data!.get("schedule")["minute"].toString().padLeft(2,"0")}:00.000');
                                    
                                    if(date.isAfter(parsedDate)){
                                      return GestureDetector(
                                      onTap: () => Get.to(() => DetailPage(snaphsot.data!.id, snaphsot.data!.get('price'))),
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: ListTile(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Color.fromARGB(50, 0, 0, 0)
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                          ),
                                          title: Text(
                                            snaphsot.data!.get("title"),
                                            style: TextStyle(
                                              fontFamily: "Quicksand",
                                              fontWeight: FontWeight.w800
                                            ),
                                          ),
                                          subtitle: Text(
                                            "${snaphsot.data!.get("schedule")["dayName"]}, ${snaphsot.data!.get("schedule")["day"].toString().padLeft(2,'0')}-${snaphsot.data!.get("schedule")["month"].toString().padLeft(2,'0')}-${snaphsot.data!.get("schedule")["year"]}",
                                            style: TextStyle(
                                              fontFamily: "Quicksand",
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                          trailing: Text(
                                            "${snaphsot.data!.get("schedule")["clock"].toString().padLeft(2,'0')}:${snaphsot.data!.get("schedule")["minute"].toString().padLeft(2,'0')}",
                                            style: TextStyle(
                                              fontFamily: "Quicksand",
                                              fontSize: 18
                                            ),
                                          ),
                                        ),
                                      ),
                                     );
                                    } else {
                                      return Text(
                                        "(Belum ada event yang anda ikuti)",
                                        style: TextStyle(
                                          fontFamily: "Quicksand"
                                        ),
                                      );
                                    }

                                  } else {
                                    return Text("Mengambil data...");
                                  }
                                }
                              )
                            ).toList(),
                          )
                        ),
                      ]
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),      
    );
  }
}