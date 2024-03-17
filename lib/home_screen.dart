import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/example_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //important, injecting dependency
  ExampleController exampleController = Get.put(ExampleController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx tutorials'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              Obx(
                () {
                  return Switch(
                      value: exampleController.notification.value,
                      onChanged: (value) {
                        exampleController.setNotification(value);
                      });
                },
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
