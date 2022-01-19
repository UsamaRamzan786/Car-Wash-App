import 'dart:io';
import 'dart:ui';
import 'package:car_wash_app/screens/main_screen.dart';
import 'package:car_wash_app/screens/services_screen.dart';
import 'package:car_wash_app/screens/sign_in.dart';
import 'package:car_wash_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({Key? key}) : super(key: key);

  @override
  _SignUPScreenState createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  File? imgfile;
  ImagePicker _imagePicker = ImagePicker();

  UserCredential? userCredential;
  picImage() {
    imgfile = _imagePicker.pickImage(source: ImageSource.gallery) as File;
  }

  register(email, password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        errorDialod(e.code.toString());
      } else if (e.code == 'email-already-in-use') {
        errorDialod(e.code.toString());
      }
    } catch (e) {
      errorDialod(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              child: CircleAvatar(
                radius: 70,
                child:
                    imgfile != null ? Image.file(imgfile!) : Icon(Icons.person),
              ),
              onTap: () => picImage(),
            ),
            Form(
              key: key,
              child: Column(
                children: [
                  CustomTextField(
                      const Icon(Icons.person), 'User name', name, false),
                  CustomTextField(
                      const Icon(Icons.email), 'Email', email, false),
                  CustomTextField(
                      const Icon(Icons.lock), 'Password', password, true),
                  CustomTextField(const Icon(Icons.lock), 'Confirm Password',
                      cPassword, true),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await register(email.text, password.text);
                Get.to(MainScreen());
              },
              child: const Text(
                'SignUp',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  '      Already have an account?',
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
                    Get.to(const SignInScreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

errorDialod(message) {
  return Get.defaultDialog(
      title: 'Error ', middleText: message, onCancel: () {});
}
