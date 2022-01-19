import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(15),
              height: 200,
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
            );
          },
        ),
      ),
    );
  }
}
