import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/constrant.dart';
import 'Chess_play_screen.dart';

class ChessOptionScreen extends StatelessWidget {
  const ChessOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(thickness: 0,),
            SizedBox(
              width: gWidth/1.3,
              child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: PrimaryColor,
                     side: BorderSide.none,
                     shape: const StadiumBorder(),
                      ),
                   child: Text("New Games as White",style: TextStyle(fontSize: 20),),
                   onPressed: () => Get.to(()=>ChessPlayScreen(isWhite: true,)),
                   ),
            ),
            SizedBox(
              width: gWidth/1.3,
              child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: PrimaryColor,
                     side: BorderSide.none,
                     shape: const StadiumBorder(),
                      ),
                   child: Text("New Games as Black",style: TextStyle(fontSize: 20),),
                   onPressed: () => Get.to(()=>ChessPlayScreen(isWhite: false,)),
                   ),
            ),
          ],
        ),
      ),
    );
  }
}