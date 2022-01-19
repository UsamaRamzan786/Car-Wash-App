import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(this.icon, this.hintText, this.controller, this.obscure);

  Icon icon;
  String hintText;
  TextEditingController controller;
  Icon? sufixicon;
  bool obscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 5, 8, 5),
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) ;
          return 'Kindly put a value';
        },
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
