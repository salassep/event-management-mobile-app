import 'dart:ui';
import 'package:event_management_app/services/user_services.dart';
import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {

  var akses = UserServices.getAccess();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
            appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 46, 45, 45)),
        title: Text(
          "Tentang Aplikasi",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            color: Color.fromARGB(255, 46, 45, 45),
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: akses == "Peserta" ? AppDrawer() : OrganizerAppDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset(
                    "assets/images/unmul.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  width: 100,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "INFORMATIKA\nUNMUL",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 18,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Event App",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 18,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              "Version 2.0.0",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 12,
                fontFamily: "Quicksand",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dibuat oleh :",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 15,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              "Muh. Aqsal Ardyansa B. (1915016054)\nAlfansya Zaidan D.P. (1915016058)\nAnanta Wijaya (1915016072)\nMuhammad Rizky Amanullah (1915016073)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 12,
                fontFamily: "Quicksand",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dikembangkan oleh :",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 15,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              "Ahmad Fadila (1915016078)\nInnatubil Issa (1915016080)\nRanjep (1915016098)\nSalas Sepkardianto (1915016099)\nDede Rizki R. (1915016100)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 54, 60, 79),
                fontSize: 12,
                fontFamily: "Quicksand",
              ),
            ),
          ],
        ),
      )
    );
  }
}