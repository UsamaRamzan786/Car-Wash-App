import 'package:car_wash_app/screens/main_screen.dart';
import 'package:car_wash_app/screens/services_screen.dart';
import 'package:car_wash_app/screens/sign_in.dart';
import 'package:car_wash_app/screens/category.dart';
import 'package:car_wash_app/screens/sign_up.dart';
import 'package:car_wash_app/screens/specialist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  FocusNode node = FocusNode();
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
                  color: Colors.pink.shade50,
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
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(120),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 150, 50, 50),
              child: Column(
                children: [
                  const Text(
                    'WELCOME TO CAR SERVICE',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Image.asset(
                      'images/welcome.png',
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GFButton(
                    onPressed: () {
                      Get.offAll(const SignInScreen());
                    },
                    text: "LOGIN",
                    blockButton: true,
                    shape: GFButtonShape.pills,
                    color: Colors.blue.shade900,
                    size: 50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GFButton(
                    onPressed: () {
                      Get.offAll(const SignUPScreen());
                    },
                    size: 50,
                    text: "SIGN UP",
                    blockButton: true,
                    shape: GFButtonShape.pills,
                    color: Colors.blue.shade500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
