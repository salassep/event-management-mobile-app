import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_management_app/controller/user_controller.dart';
import 'package:event_management_app/pages/organizer/edit_event_page.dart';
import 'package:event_management_app/pages/organizer/organizer_main_page.dart';
import 'package:event_management_app/services/event_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {

  String idEvent, price;

  DetailPage(this.idEvent, this.price);

  final UserController userController = Get.find();

  String getMonthName(month){
    var monthInt = int.parse(month);
    List months = ["Jan", "Feb", "Mar", "May", "Jun", "Jul", "Aug", "Sep", "Nov", "Des"];
    return months[monthInt-1];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 46, 45, 45)),
        title: Text(
          "Detail Event",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            color: Color.fromARGB(255, 46, 45, 45)
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,
                onPrimary: Colors.red,
              ),
              onPressed: (){
                events.doc(idEvent).delete().then((value) => Get.off(() => OrganizerHome()));
              }, 
              child: Icon(
                Icons.delete,
                color: Color.fromARGB(255, 46, 45, 45),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<DocumentSnapshot>(
          future: events.doc(idEvent).get(),
          builder: (_, snapshot) {
            return (snapshot.hasData)
              ? ListView(
              padding: EdgeInsets.symmetric(horizontal: 18,),
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
                            "${snapshot.data!.get('schedule')['day']} - ${snapshot.data!.get('schedule')['month']} - ${snapshot.data!.get('schedule')['year']}",
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
                    height: 15,
                  ),
                  Text(
                    snapshot.data!.get("title"),
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 54, 60, 79),
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "By ${snapshot.data!.get('organizer')}",
                    style: TextStyle(
                      color: Color.fromARGB(255, 54, 60, 79),
                      fontFamily: "Quicksand",
                      fontSize: 12
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Color.fromARGB(255, 226, 225, 225),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Color.fromARGB(50, 54, 60, 79),
                                width: 1
                              )
                            )
                          ),
                          child: Text(
                            "${getMonthName(snapshot.data!.get('schedule')['month'])}\n${snapshot.data!.get('schedule')['day']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontFamily: "Quicksand",
                              color: Color.fromARGB(255, 54, 60, 79),
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 70),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "${snapshot.data!.get('schedule')['dayName']}\n",
                                  style: TextStyle(
                                    fontFamily: "Quicksand",
                                    color: Color.fromARGB(255, 54, 60, 79),
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                TextSpan(
                                  text: "${snapshot.data!.get('schedule')['clock']}.${snapshot.data!.get('schedule')['minute']} - End",
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 1.5,
                                    fontFamily: "Quicksand",
                                    color: Color.fromARGB(255, 54, 60, 79),
                                  ),
                                ),
                              ]
                            )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromARGB(255, 54, 60, 79),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Deskripsi Event",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 12
                    )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    snapshot.data!.get('deskripsi'),
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 12
                    )
                  ),
              ],
            ) : Text("Mengambil data ..."); 
          },
        ), 
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Total Price\n",
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Quicksand",
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            TextSpan(
                              text: "Rp $price",
                              style: TextStyle(
                                height: 1.5,
                                fontFamily: "Quicksand",
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ]
                        )
                      ),            
              )
            ),
            Expanded(
              child: FloatingActionButton(
                onPressed: (){
                  if(userController.akses.value == "Organizer"){
                    Get.to(() => EditEvent(idEvent));
                  }
                },
                backgroundColor: Color.fromARGB(255, 54, 60, 79),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero
                ),
                child: Text(
                  userController.akses.value == "Organizer" ? "Edit" : "Daftar",
                  style: TextStyle(
                    letterSpacing: 0,
                    fontFamily: "Quicksand",
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}