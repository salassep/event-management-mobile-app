import 'package:event_management_app/controller/event_controller.dart';
import 'package:event_management_app/pages/organizer/organizer_main_page.dart';
import 'package:event_management_app/services/event_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryEvent extends StatelessWidget {

  final CreateEventTextController cetc = Get.find();
  final CreateEventCategoryController rc = Get.put(CreateEventCategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color.fromARGB(255, 54, 60, 79),
                      size: 22,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Buat Event",
                    style: TextStyle(
                      color: Color.fromARGB(255, 54, 60, 79),
                      fontSize: 22,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "Pilih Kategori",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  "Desain",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                  ),
                ),
                leading: Obx(
                  () => Radio<Delivery>(
                    value: Delivery.Desain,
                    groupValue:
                        rc.delivery.value, 
                    onChanged: (value) {
                      rc.delivery(value);
                    },
                  ),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  "Technology",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                  ),
                ),
                leading: Obx(
                  () => Radio<Delivery>(
                      value: Delivery.Technology,
                      groupValue: rc.delivery.value,
                      onChanged: (value) {
                        rc.delivery(value);
                      }),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  "Cloud",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                  ),
                ),
                leading: Obx(
                  () => Radio<Delivery>(
                      value: Delivery.Cloud,
                      groupValue: rc.delivery.value,
                      onChanged: (value) {
                        rc.delivery(value);
                      }),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  "Programming",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                  ),
                ),
                leading: Obx(
                  () => Radio<Delivery>(
                      value: Delivery.Programming,
                      groupValue: rc.delivery.value,
                      onChanged: (value) {
                        rc.delivery(value);
                      }),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  "Others",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                  ),
                ),
                leading: Obx(
                  () => Radio<Delivery>(
                      value: Delivery.Others,
                      groupValue: rc.delivery.value,
                      onChanged: (value) {
                        rc.delivery(value);
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async { 
                    rc.getDeliveryName();

                    if(cetc.idEvent.value == ""){
                      await EventServices.addEvents()
                        .then((value) {
                          Get.off(() => OrganizerHome());
                      });
                    }  else  {
                      await EventServices.updateEvents()
                        .then((value) {
                          Get.off(() => OrganizerHome());
                        });
                    }
                  },
                  child: Text(
                    'Simpan',
                    style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Quicksand",
                    fontSize: 14,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color.fromARGB(255, 54, 60, 79)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}