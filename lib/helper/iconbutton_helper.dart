import 'package:car_wash_app/screens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_sign_in/google_sign_in.dart';

class IconButtonHelper extends StatelessWidget {
  IconButtonHelper({required this.icon, required this.function});
  FaIcon icon;
  String function;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return GFIconButton(
      buttonBoxShadow: true,
      color: Colors.grey.shade400,
      shape: GFIconButtonShape.circle,
      type: GFButtonType.outline,
      onPressed: () async {
        await signInWithGoogle();
        Get.to(MainScreen());
      },
      icon: icon,
      padding: EdgeInsets.all(12),
    );
  }
}
