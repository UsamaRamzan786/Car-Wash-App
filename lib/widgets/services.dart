import 'package:car_wash_app/helper/iconbutton_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Services extends StatefulWidget {
  Services(this.service, this.icon);
  FaIcon icon;
  String service;
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        IconButtonHelper(function: 'Google', icon: widget.icon),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.service,
          style: TextStyle(
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 10),
        )
      ],
    );
  }
}
