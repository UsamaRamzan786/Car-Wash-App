import 'package:car_wash_app/screens/category.dart';
import 'package:car_wash_app/screens/main_screen.dart';
import 'package:car_wash_app/screens/services_screen.dart';
import 'package:car_wash_app/screens/specialist.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          GFDrawerHeader(
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('images/welcome.png'),
                ),
                Text(
                  'Wash My CAR',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: const CircleAvatar(
              radius: 30,
              child: Icon(Icons.home),
            ),
            onTap: () => Get.to(MainScreen()),
          ),
          ListTile(
            title: const Text(
              'Specialist',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn5.vectorstock.com/i/1000x1000/02/94/special-gold-icon-vector-16320294.jpg'),
            ),
            onTap: () => Get.to(SpecialistScreen()),
          ),
          ListTile(
            title: const Text(
              'Categorys',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPT6vAd0rPvxcQJIJxZCTTiK6IIzpVVJjBaQ&usqp=CAU'),
            ),
            onTap: () => Get.to(CategoryScreen()),
          ),
          ListTile(
            title: const Text(
              'Book Appointment ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1ytnINfNV9tLCR2eGbU7PrX6gv_HyZgloZg&usqp=CAU'),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Services',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbQduI7SDp7S-wWLBPpKOl9OA6GgZHAcRzbg&usqp=CAU'),
            ),
            onTap: () => Get.to(ServicesScreen()),
          ),

          //SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text(
                'Logout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
