import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/fav_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavController controller = Get.put(FavController());

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
        body: ListView.builder(
            itemCount: controller.fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        if (controller.tempFruitList
                            .contains(controller.fruitList[index].toString())) {
                          controller.removeFromFav(
                              controller.fruitList[index].toString());
                        } else {
                          controller
                              .addToFav(controller.fruitList[index].toString());
                        }
                      },
                      title: Text(controller.fruitList[index].toString()),
                      trailing: Obx(
                        () => Icon(
                          Icons.favorite,
                          color: controller.tempFruitList.contains(
                                  controller.fruitList[index].toString())
                              ? Colors.red
                              : Colors.white,
                        ),
                      )));
            }));
  }
}
