import 'dart:ui';

import 'package:echessapp/Utils/constrant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../Widgets/repeated_widgets.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/LoginPage/loginImage01.jpg",
            height: gHeight,
            fit: BoxFit.cover,
            ),
          Positioned(
            top: gHeight/1.6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              //clipBehavior: Clip.hardEdge,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8,
                  sigmaY: 8,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.15),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white.withOpacity(.4))
                      ),
                      //alignment: Alignment.center,
                      height: gWidth/1.6,
                      width: gWidth /1.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Space(spaceH: 8,),
                            Text("sign".tr,style:const TextStyle(color: Colors.white,fontSize: 20),),
                            Divider(height: 5,thickness: 0,color: Colors.white.withOpacity(.2),),
                            Space(spaceH: 25,),
                            const GoogleButton(),
                            Space(spaceH: 25,),
                            FacebookButton(),
                            Space(spaceH: 25,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ),
            ),
          )
        ],
      ),
    );
  }
}