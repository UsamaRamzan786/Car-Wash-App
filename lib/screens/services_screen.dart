import 'package:car_wash_app/helper/iconbutton_helper.dart';
import 'package:car_wash_app/screens/category.dart';
import 'package:car_wash_app/screens/specialist.dart';
import 'package:car_wash_app/widgets/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  double _rating = 2.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                  Services(
                    'Wash',
                    const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                  Services(
                    'Wash',
                    const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Specialist',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () => Get.to(SpecialistScreen()),
                    child: Text(
                      'View all',
                      style:
                          TextStyle(color: Colors.blue.shade900, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          child: Image.asset('images/welcome.png'),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'Zeeshan Meo',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Wash Specialist',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        GFRating(
                          size: 15,
                          color: Colors.amber,
                          value: _rating,
                          onChanged: (value) {
                            setState(() {
                              _rating = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          child: Image.asset('images/welcome.png'),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'Zeeshan Meo',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Wash Specialist',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        GFRating(
                          size: 15,
                          color: Colors.amber,
                          value: _rating,
                          onChanged: (value) {
                            setState(() {
                              _rating = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          child: Image.asset('images/welcome.png'),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'Zeeshan Meo',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          'Wash Specialist',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        GFRating(
                          size: 15,
                          color: Colors.amber,
                          value: _rating,
                          onChanged: (value) {
                            setState(() {
                              _rating = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () => Get.to(CategoryScreen()),
                    child: Text(
                      'View all',
                      style:
                          TextStyle(color: Colors.blue.shade900, fontSize: 20),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      child: Container(
                        height: 150,
                        width: 220,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                'images/welcome.png',
                              ),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Chip(
                            backgroundColor: Colors.black45,
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                            label: Text(
                              'Usama Ramazan',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        width: 220,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                'images/welcome.png',
                              ),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Chip(
                            backgroundColor: Colors.black45,
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                            label: Text(
                              'Usama Ramazan',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        width: 220,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                'images/welcome.png',
                              ),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Chip(
                            backgroundColor: Colors.black45,
                            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                            label: Text(
                              'Usama Ramazan',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // // //  Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       '',
              //       style: TextStyle(
              //           color: Colors.blue.shade900,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 20),
              //     ),
              //     TextButton(
              //       onPressed: () => Get.to(SpecialistScreen()),
              //       child: Text(
              //         'View all',
              //         style: TextStyle(color: Colors.blue.shade900, fontSize: 20),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // ListView(
              //   scrollDirection: Axis.horizontal,
              //   shrinkWrap: true,
              //   children: [
              //     Container(
              //       width: 100,
              //       height: 200,
              //       decoration: BoxDecoration(
              //         image: const DecorationImage(
              //             image: AssetImage(
              //               'images/welcome.png',
              //             ),
              //             fit: BoxFit.fill),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //     Container(
              //       width: 100,
              //       height: 200,
              //       decoration: BoxDecoration(
              //         image: const DecorationImage(
              //             image: AssetImage(
              //               'images/welcome.png',
              //             ),
              //             fit: BoxFit.fill),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //     Container(
              //       width: 100,
              //       height: 200,
              //       decoration: BoxDecoration(
              //         image: const DecorationImage(
              //             image: AssetImage(
              //               'images/welcome.png',
              //             ),
              //             fit: BoxFit.fill),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
