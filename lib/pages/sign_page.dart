import 'package:event_management_app/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class daftar extends StatefulWidget {
  const daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

enum SingingCharacter { peserta, organizer }

class _daftarState extends State<daftar> {
  SingingCharacter? _character = SingingCharacter.peserta;
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
                  "Registrasi",
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
            top: MediaQuery.of(context).size.height * 0.09,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.person,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(50, 54, 60, 79),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextField(
                              maxLines: 1,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.name,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: "Nama",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                  ),
                                border: InputBorder.none,
                                // suffixIcon: SizedBox(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.phone,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(50, 54, 60, 79),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextField(
                              maxLines: 1,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.phone,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: "No. Telpon",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                  ),
                                border: InputBorder.none,
                                suffixIcon: SizedBox(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.mail,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(50, 54, 60, 79),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextField(
                              maxLines: 1,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: "Alamat Email",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                  ),
                                border: InputBorder.none,
                                suffixIcon: SizedBox(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.key,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(50, 54, 60, 79),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextField(
                              maxLines: 1,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: const Icon(Icons.visibility),
                                    onPressed: () {}),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                  ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.people_alt,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Hak Akses",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    child: ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                      visualDensity: VisualDensity(horizontal: -4, vertical: -2),
                      title: const Text(
                        'Peserta',
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 15
                        ),
                      ),
                      leading: Radio<SingingCharacter>(
                        fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 54, 60, 79)),
                        value: SingingCharacter.peserta,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                      visualDensity: VisualDensity(horizontal: -4, vertical: -2),
                      title: const Text(
                        'Organizer',
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 15
                        ),
                      ),
                      leading: Radio<SingingCharacter>(
                        fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 54, 60, 79)),
                        value: SingingCharacter.organizer,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => Get.to(Signin()),
                        child: Text(
                          'Daftar',
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
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text.rich(
                        TextSpan(
                            text: "Sudah punya akun ? ",
                            style: const TextStyle(
                                color: Colors.black87, 
                                fontSize: 15,
                                fontFamily: "Quicksand",
                              ),
                                
                            children: <InlineSpan>[
                              TextSpan(
                                  text: "Log in",
                                  style: const TextStyle(
                                    color: Colors.blue, 
                                    fontSize: 15,
                                    fontFamily: "Quicksand",
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap = (){
                                   Navigator.push(context, MaterialPageRoute(builder:(context) => Signin()),);
                                  } 
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
