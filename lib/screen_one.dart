import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  String name;
  ScreenOne({Key? key, this.name = ''}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen one ' + widget.name),
      ),
      body:
          // Container(// reads th height of our screen and adjusts container
          //height accordingly
          //   height: MediaQuery.of(context).size.height * 1,
          // or Get.height * .5;
          // )
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Go to next screen'))
          ]),
    );
  }
}
