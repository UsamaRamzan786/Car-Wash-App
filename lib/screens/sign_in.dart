import 'dart:typed_data';

import 'package:car_wash_app/helper/iconbutton_helper.dart';
import 'package:car_wash_app/screens/main_screen.dart';
import 'package:car_wash_app/screens/sign_up.dart';
import 'package:car_wash_app/widgets/custom_text_field.dart';
import 'package:car_wash_app/widgets/dialogbox.dart';
import 'package:car_wash_app/widgets/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:car_wash_app/screens/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_sign_in/google_sign_in.dart';

ErrorDialogBox errorDialogBox = ErrorDialogBox();

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> _key = GlobalKey();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;
  Future login(email, password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorDialod(e.code.toString());
      } else if (e.code == 'wrong-password') {
        errorDialod(e.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(-1.0, -1.0),
              child: Container(
                height: 120,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(200),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-1.0, 1.0),
              child: Container(
                height: 110,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(120),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                child: Column(
                  children: [
                    const Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Image.asset(
                        'images/welcome.png',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                      child: Column(
                        children: [
                          CustomTextField(const Icon(Icons.email), 'Email',
                              _emailController, false),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(const Icon(Icons.lock), 'Password',
                              _passwordController, true),
                          const SizedBox(
                            height: 10,
                          ),
                          GFButton(
                            onPressed: () {
                              login(_emailController.text,
                                      _passwordController.text)
                                  .then((value) => () {
                                        Get.off(MainScreen());
                                      });
                            },
                            size: 50,
                            text: "LOGIN",
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            blockButton: true,
                            shape: GFButtonShape.pills,
                            color: Colors.blue.shade900,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '      Not have an account?',
                          style: TextStyle(color: Colors.blue.shade400),
                        ),
                        TextButton(
                          child: Text(
                            "   Sign Up",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Get.to(const SignUPScreen());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButtonHelper(
                            icon: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.blue.shade900,
                            ),
                            function: 'Google'),
                        IconButtonHelper(
                            icon: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                            ),
                            function: 'Google'),
                        IconButtonHelper(
                            icon: const FaIcon(
                              FontAwesomeIcons.googlePlusG,
                              color: Colors.red,
                            ),
                            function: 'Google'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

errorDialod(message) {
  return Get.defaultDialog(
      title: 'Error ',
      middleText: message,
      onCancel: () {
        Text('OK');
      });
}
