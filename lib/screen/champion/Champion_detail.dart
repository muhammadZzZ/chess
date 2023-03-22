// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/Widgets/repeated_widgets.dart';



class DetailChampion extends StatefulWidget {
  String title;
  String image;
  String description;
  String wct;
  String text1;
  String text2;
  String link;
  DetailChampion({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.wct,
    required this.text1,
    required this.text2,
    required this.link,
  }) : super(key: key);

  @override

  State<DetailChampion> createState() => _DetailChampionState();
}


class _DetailChampionState extends State<DetailChampion> { 
//   late YoutubePlayerController _controller;

// @override
//   void initState() {
//      _controller = YoutubePlayerController(
//       initialVideoId:widget.link,
//       flags: YoutubePlayerFlags(
//           mute: false,
//           autoPlay: true,
//           disableDragSeek: true,
//           loop: false,
//           enableCaption: false),
//     );

//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: SecondaryColor,
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(title,style: TextStyle(color: PrimaryColor),),
      // ),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
              width: gWidth,height: gHeight*.5,
              child: Image(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
            ),
            buttomArrow(),
            DraggableScrollableSheet(
             initialChildSize: .55,
             minChildSize: .53,
             maxChildSize: 1.0,
             builder: (context, scrollController) {
             return SingleChildScrollView(
               controller: scrollController,
               child: Container(
                 height: gHeight,
                 clipBehavior: Clip.hardEdge,
                 decoration:  BoxDecoration(
                   borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                   ),
                   color: Theme.of(context).cardColor,
                 ),
                 child: SingleChildScrollView(
                  controller: scrollController,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         //for the top container inside the draggablescrollview
                         Padding(
                           padding: const EdgeInsets.only(top: 10,bottom: 25),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Container(
                                 height: 5,width: 35,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(25),
                                   color: Colors.grey
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 22,
                            color: PrimaryColor
                          ),
                          ),
                          Space(spaceH: 10,),
                          const Divider(color: Colors.grey,),
                          Space(spaceH: 35,),
                          //description section
                          //start
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              iskurdish ? "${widget.title} ${"WhoIs".tr}" : "${"WhoIs".tr} ${widget.title}",
                              style:const TextStyle(
                                fontSize: 19,
                              ),
                            ),
                          ),
                          Space(spaceH: 10,),
                          Container(
                            alignment: Alignment.centerLeft,
                                 height: 1.3,width: gWidth*.7,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(25),
                                   color: PrimaryColor
                                 ),
                               ),
                               Space(spaceH: 10,),
                          Container(
                            margin:const EdgeInsets.all(8),
                            child: Flexible(
                              child: Text(
                                widget.description,
                                style:const TextStyle(
                                  fontSize: 16
                                ),
                                ),
                            ),
                            ),
                            //end of decrption section
                            Container(
                            margin:const EdgeInsets.all(8),
                            child: Flexible(
                              child: Text(
                                widget.text1,
                                style:const TextStyle(
                                  fontSize: 16
                                ),
                                ),
                            ),
                            ),
                            Container(
                            margin:const EdgeInsets.all(8),
                            child: Flexible(
                              child: Text(
                                widget.text2,
                                style:const TextStyle(
                                  fontSize: 16
                                ),
                                ),
                            ),
                            ),
                            Space(spaceH: 30,),
                            //world champion times 
                            //start
                          Column(
                            children: [
                              Text(
                                "${"HowManyTime".tr} ${widget.title}",
                                style:const TextStyle(
                                fontSize: 19,
                              ),
                              ),
                              Space(spaceH: 5,),
                              Text(
                                "wonWorldChess".tr,
                                style:const TextStyle(
                                fontSize: 19,
                              ),
                              ),
                            ],
                          ),
                          Space(spaceH: 10,),
                          Container(
                            alignment: Alignment.centerLeft,
                                 height: 1.3,width: gWidth*.7,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(25),
                                   color: PrimaryColor
                                 ),
                               ),
                               Space(spaceH: 10,),
                            Container(
                            margin:const EdgeInsets.all(8),
                            child: Flexible(
                              child: Text(
                                widget.wct,
                                style:const TextStyle(
                                  fontSize: 16
                                ),
                                ),
                            ),
                            ),
                            //end of world champion times section
                            Space(spaceH: 30,),
                            //best game 
                            //start
                       ],
                     ),
                   ),
                 ),
               ),
             );
           },)
            ],
          ),
        ],
      ),
    );
  }
}


//CUSTOM BACK ARROW 
buttomArrow() {
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
              iskurdish == true ? LineAwesomeIcons.arrow_right :LineAwesomeIcons.arrow_left,
              color: Colors.white,
            ),
          ),
          ),
      ),
    ),
  );
}

