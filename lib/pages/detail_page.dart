import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18,),
          children: [
            Container(
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
              SizedBox(
                height: 15,
              ),
              Text(
                "UI/UX Designer",
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
                "By Rainer braun",
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
                        "May\n30",
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
                              text: "Wednesday\n",
                              style: TextStyle(
                                fontFamily: "Quicksand",
                                color: Color.fromARGB(255, 54, 60, 79),
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            TextSpan(
                              text: "09.30 - End",
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
                "Lorem ipsum fadil kontoru memekuru bodokuru anjingkuru babikurulksjflkjsdlfkjsdljflskdfjlksdjfifijeoirgjoidfsujgoifgdfgjfg",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 12
                )
              ),
          ],
        ) 
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
                              text: "Free",
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
                onPressed: (){},
                backgroundColor: Color.fromARGB(255, 54, 60, 79),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero
                ),
                child: Text(
                  "Daftar",
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