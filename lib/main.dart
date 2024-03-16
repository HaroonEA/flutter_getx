import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/home_screen1.dart';
import 'package:getxsample/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
      ],
    );
  }
}
