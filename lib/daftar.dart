import 'package:event_management_app/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
    final Function() onTap;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 235, 19, 145),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Registrasi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
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
                    height: 50,
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
                            color: Color.fromARGB(159, 245, 188, 188),
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
                                    fontWeight: FontWeight.w500),
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
                            color: Color.fromARGB(159, 245, 188, 188),
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
                                    fontWeight: FontWeight.w500),
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
                            color: Color.fromARGB(159, 245, 188, 188),
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
                                    fontWeight: FontWeight.w500),
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
                            color: Color.fromARGB(159, 245, 188, 188),
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
                                    fontWeight: FontWeight.w500),
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
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.people_alt,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Hak Akses",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: const Text('Peserta'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.peserta,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Organizer'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.organizer,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Daftar'),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color.fromARGB(255, 235, 19, 145),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text.rich(
                        TextSpan(
                            text: "Sudah Punya Akun ",
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 16),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: "Masuk",
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 16),
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
