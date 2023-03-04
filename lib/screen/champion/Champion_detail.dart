// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:echessapp/Utils/constrant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DetailChampion extends StatelessWidget {
  String title;
  String image;
  String description;
  String wct;
  String text1;
  String text2;
  DetailChampion({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.wct,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(title,style: TextStyle(color: PrimaryColor),),
      // ),
      body: SizedBox(
      width: gWidth,height: gHeight,
        child: Column(
          children: [
            SizedBox(
              width: gWidth,height: gHeight*.5,
              child: Stack(
                children: [
                  Container(
                  width: gWidth,
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
                ButtomArrow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// scroll() {
//   return DraggableScrollableSheet(
//     initialChildSize: .6,
//     minChildSize: .6,
//     maxChildSize: 1.0,
//     builder: (context, scrollController) {
//     return Container(
//       height: 25,
//       clipBehavior: Clip.hardEdge,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//         ),
//         color: SecondaryColor,
//       ),
//       child: Column(
//         children: [

//         ],
//       ),
//     );
//   },);
// }

ButtomArrow() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () => Get.back(),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 55,width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: Container(
            height: 55,width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              LineAwesomeIcons.arrow_left,
              color: Colors.white,
            ),
          ),
          ),
      ),
    ),
  );
}
