import 'package:flutter/material.dart';
import 'package:getxsample/screen_one.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx tutorials'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  // Get.to(ScreenOne(
                  //   name: 'haroon',
                  // ));
                  Get.toNamed('/screenOne',
                      arguments: ['Haroon', 'my name is this']);
                },
                child: Text('Go to next screen'))
          ]),
    );
  }
}
