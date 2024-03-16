import 'package:flutter/material.dart';
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
        title: const Text('Getx tutorials'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
                title: Text('Getx dialog alert'),
                subtitle: Text('Click to get dialogue alert'),
                onTap: () {
                  Get.defaultDialog(
                      title: 'Delete chat',
                      titlePadding: EdgeInsets.only(top: 20),
                      contentPadding: EdgeInsets.all(20),
                      // middleText: 'Are you sure?',
                      confirm: TextButton(
                          onPressed: () {
                            Get.back(); //used to go back
                            //Navigator.pop(context);
                          },
                          child: Text('ok')),
                      cancel:
                          TextButton(onPressed: () {}, child: Text('Cancel')),
                      content: const Column(
                        children: [
                          Text('cancel'),
                          Text('cancel'),
                          Text('cancel')
                        ],
                      ));
                }),
          ),
          Card(
            child: ListTile(
                title: Text('Getx Bottom sheet'),
                subtitle: Text('Click to get dialogue alert'),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ));
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //SnackBar
        Get.snackbar('Haroon', 'Hello world',
            icon: Icon(Icons.add),
            onTap: (snap) {},
            mainButton: TextButton(onPressed: () {}, child: Text('Click')),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
