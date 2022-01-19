import 'package:car_wash_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class SpecialistScreen extends StatefulWidget {
  const SpecialistScreen({Key? key}) : super(key: key);

  @override
  _SpecialistScreenState createState() => _SpecialistScreenState();
}

class _SpecialistScreenState extends State<SpecialistScreen> {
  double _rating = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Specialist'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          'images/welcome.png',
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                  ),
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
            );
          },
        ),
      ),
    );
  }
}
