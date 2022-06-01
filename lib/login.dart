import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

 class _SigninState extends State<Signin> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  "Log In",
                  style: TextStyle(
                    color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700
                  ),
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
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(159, 245, 188, 188),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
                            border: InputBorder.none,
                            suffixIcon: const SizedBox(),
                        ),
                      ),
                    )
                  ),
                   const SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(159, 245, 188, 188),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.visibility), onPressed: () {}),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
                            border: InputBorder.none,
                        ),
                      ),
                    )
                  ),
                   SizedBox(
                      height: 30 ,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color.fromARGB(255, 235, 19, 145),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.149,
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Text.rich(
                      TextSpan(
                        text: "Don't already Have an account? ",
                        style: const TextStyle(color: Colors.black87, fontSize: 16),
                        children: [
                          TextSpan(
                              text: "Sign Up",
                              style: const TextStyle(color: Colors.blue, fontSize: 16),
                              recognizer: TapGestureRecognizer()..onTap 
                          ),
                        ]
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
