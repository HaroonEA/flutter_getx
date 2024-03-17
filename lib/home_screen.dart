import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/example_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx tutorials'),
      ),
      body: Column(
        children: [
          Obx(() => Container(
                height: 200,
                width: 200,
                color:
                    Colors.red.withOpacity(exampleTwoController.opacity.value),
              )),
          Obx(() => Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (value) {
                exampleTwoController.setOpacity(value);
              }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
