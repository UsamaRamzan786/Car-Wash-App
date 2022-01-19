import 'package:car_wash_app/screens/specialist.dart';
import 'package:car_wash_app/screens/welcome.dart';
import 'package:car_wash_app/widgets/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () async {
                //await FirebaseAuth.instance.signOut();
                GoogleSignInAccount? googleUser =
                    await GoogleSignIn().signOut();

                Get.to(WelcomeScreen());
              },
              child: Text('LogOut'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.blue.shade300,
                      child: Row(
                        children: const [
                          Text(
                            'K',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '29',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: const Text(
                      'K29 Solutions',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  const Text(
                    'Wash my car',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue.shade900,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey.shade600)),
                      hintText: ('Search for service'),
                      hintStyle: const TextStyle(color: Colors.blue),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        onPressed: () => searchController.clear(),
                      ))),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Text(
                      'Service',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Services(
                          'Interior clean',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        Services(
                          'Wash',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        Services(
                          'Wash',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        Services(
                          'Wash',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Services(
                          'Interior clean',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        Services(
                          'Wash',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        Services(
                          'Wash',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        Services(
                          'Wash',
                          const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Specialist',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () => Get.to(SpecialistScreen()),
                        child: Text(
                          'View all',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          elevation: 5,
                          child: Image.asset('images/welcome.png'),
                        ),
                        Card(
                          elevation: 5,
                          child: Image.asset('images/welcome.png'),
                        ),
                        Card(
                          elevation: 5,
                          child: Image.asset('images/welcome.png'),
                        ),
                        Card(
                          elevation: 5,
                          child: Image.asset('images/welcome.png'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
