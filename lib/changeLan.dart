import 'package:echessapp/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'Utils/constrant.dart';

class ChangeLan extends StatefulWidget {
  const ChangeLan({super.key});

  @override
  State<ChangeLan> createState() => _ChangeLanState();
}

class _ChangeLanState extends State<ChangeLan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
        iconSize: 30,
        splashRadius: 20,splashColor: PrimaryColor.withOpacity(.2),
        onPressed: () {
          Get.off(()=>HomePage());
        }, 
        icon:const Icon(
        LineAwesomeIcons.arrow_right
        ),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
            onPressed: () {
              setState(() { });
            }, 
            child:const Text(
              "English to Kurdish"
            )),
            ElevatedButton(
            onPressed: () {
              setState(() { });
            }, 
            child:const Text(
              "Kurdish to English"
            )),
          ],
        ),
      ),
    );
  }
}