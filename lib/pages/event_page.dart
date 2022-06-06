import 'package:event_management_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class YourEventPage extends StatelessWidget {
  const YourEventPage({Key? key}) : super(key: key);

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
                          child: Column(
                            children: [
                              ListTile(
                                tileColor: Colors.red,
                                contentPadding: EdgeInsets.zero,
                                title: Text("AJsjd"),
                                subtitle: Text("Mantap"),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text("AJsjd"),
                                subtitle: Text("Mantap"),
                              ),
                              
                            ],
                          ),
                        ),
                        Container(
                          child: Text("2"),
                        ),
                        Container(
                          child: Text("3"),
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