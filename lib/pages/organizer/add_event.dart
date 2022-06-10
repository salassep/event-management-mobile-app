import 'package:event_management_app/controller/event_controller.dart';
import 'package:event_management_app/pages/organizer/category_event.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final CheckBoxController b = Get.put(CheckBoxController());
  final CreateEventTextController _textController = Get.put(CreateEventTextController());
  final CreateEventSchedule _scheduleController = Get.put(CreateEventSchedule());

    /// Tanggal sekarang + 1 hari & jam sekarang.
  DateTime selectedDate = DateTime.now().add(new Duration(days: 1));
  TimeOfDay selectedTime = TimeOfDay.now();

  _selectDateAndTime(BuildContext context) async {
    DateTime now = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate:
          DateTime(now.year, now.month, now.day).add(new Duration(days: 1)),
      lastDate: DateTime(now.year + 1),
      helpText: 'Tentukan Jadwal Event', // Can be used as title
      cancelText: 'Kembali',
      confirmText: 'Simpan',
    );
    if (pickedDate != null && pickedDate != selectedDate)
      setState(() {
        selectedDate = pickedDate;
      });

    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      helpText: 'Tentukan Waktu Event', // Can be used as title
      cancelText: 'Kembali',
      confirmText: 'Simpan',
    );

    if (pickedTime != null)
      setState(() {
        selectedTime = pickedTime;
      });
  }

  Widget dateChooser() => Row(
          children: [
            Icon(
              Icons.date_range,
              color: Color.fromARGB(255, 54, 60, 79),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Tanggal Event: ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: "Quicksand"
                ),
              ),
              Text(
                "${selectedDate.day}-${selectedDate.month}-${selectedDate.year} ${selectedTime.hour}:${selectedTime.minute}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 16
                ),
              ),
            ]),
            Spacer(),
            ElevatedButton(
              onPressed: () => _selectDateAndTime(context), // Refer step 3
              child: Text(
                'Ubah...',
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w600
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Color.fromARGB(255, 54, 60, 79),
                elevation: 2,
                side: BorderSide(color: Color.fromARGB(55, 54, 60, 79), width: 1),
                padding: EdgeInsets.all(5),
              ),
            ),
          ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 54, 60, 79),
          ),
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
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Buat Event",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height * 1.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Nama Event",
                              style: TextStyle(
                                fontFamily: "Quicksand"
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only( left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(50, 54, 60, 79),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TextField(
                                controller: _textController.eventNameController,
                                maxLines: 1,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.emailAddress,
                                obscureText: false,
                                decoration: InputDecoration(
                                    hintText: "Nama Event",
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: "Quicksand",
                                      fontWeight: FontWeight.w300),
                                    border: InputBorder.none,
                                    suffixIcon: const SizedBox(),
                                ),
                              ),
                            )
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Jadwal",
                              style: TextStyle(
                                fontFamily: "Quicksand"
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(50, 54, 60, 79),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: dateChooser()
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "URL",
                              style: TextStyle(
                                fontFamily: "Quicksand"
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(50, 54, 60, 79),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TextField(
                                controller: _textController.linkController,
                                maxLines: 1,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "URL Event",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w300),
                                  border: InputBorder.none,
                                  suffixIcon: const SizedBox(),
                                ),
                              ),
                            )
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Lokasi",
                              style: TextStyle(
                                fontFamily: "Quicksand"
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(50, 54, 60, 79),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TextField(
                                controller: _textController.lokasiController,
                                maxLines: 1,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Lokasi Event",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w300),
                                  border: InputBorder.none,
                                  suffixIcon: const SizedBox(),
                                ),
                              ),
                            )
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Harga",
                              style: TextStyle(
                                fontFamily: "Quicksand"
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(50, 54, 60, 79),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TextField(
                                controller: _textController.hargaController,
                                maxLines: 1,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Harga",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w300),
                                  border: InputBorder.none,
                                  suffixIcon: const SizedBox(),
                                ),
                              ),
                            )
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Deskripsi",
                              style: TextStyle(
                                fontFamily: "Quicksand"
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(50, 54, 60, 79),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TextFormField(
                                controller: _textController.deskripsiController,
                                maxLines: 5,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: "Deskripsi",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w300),
                                  border: InputBorder.none,
                                  suffixIcon: const SizedBox(),
                                ),
                              ),
                            )
                          ),
                          ListTile(
                            title: Align(
                              alignment: Alignment(-1.25, 0),
                              child: Text(
                                "Publish",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Quicksand",
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                            leading: Obx(
                              ()=> Checkbox(
                                value: b.isPublish.value, 
                                onChanged: (newValue) => b.setValue(newValue),
                              )
                            ),
                          ),
                           SizedBox(
                              height: 20 ,
                          ),
                          Center(
                            child: Container(
                              width: 150,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  _textController.onPressed();
                                  _scheduleController.onPressed(
                                    DateFormat('EEEE').format(selectedDate), 
                                    selectedDate.day, 
                                    selectedDate.month, 
                                    selectedDate.year, 
                                    selectedTime.hour, 
                                    selectedTime.minute
                                  );
                                  Get.to(() => CategoryEvent());
                                },
                                child: Text(
                                  'Selanjutnya',
                                  style: TextStyle(
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Color.fromARGB(255, 54, 60, 79),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                ),
            ),
          ),
        ],
      )),
    );
  }
}
