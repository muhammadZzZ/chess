import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/screen/CourseList.dart';
import 'package:echessapp/screen/ProfileScreens/Profile_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'champion/Champion_list_screen.dart';
import '../Utils/constrant.dart';
import '../Widgets/repeated_widgets.dart';
import '../models/puzzles/chessPuzzle.dart';
import 'Chess_play_screen.dart';
import '../Puzzle/Level_screen.dart';
import 'ProfileScreens/Profile_edite.dart';
import 'authentication.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  //final  cu = FirebaseAuth.instance.currentUser!;
  var currentIndex=0;
  var titleOfScreen="Home Screen";
  
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  Widget build(BuildContext context) {
   //TODO: used to hide android status and navigation bar
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [],);
    return Scaffold(
    appBar: AppBar(
      title: Text(titleOfScreen,style: const TextStyle(color: Colors.black),),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        iconSize: 30,
        splashRadius: 20,splashColor: PrimaryColor.withOpacity(.2),
        onPressed: () {
          
        },
        icon: Icon(
          LineAwesomeIcons.bell,
          color: PrimaryColor,
          )
      ),
      actions: [
        IconButton(
          iconSize: 40,
          splashColor: PrimaryColor.withOpacity(.5),
          splashRadius: 25,
          onPressed: () => Get..to(()=> ProfilePage()),
          //onPressed: ()  => Get..to(()=> const ProfileScreen()),
          
          icon:  CircleAvatar(
            radius: 30,
            backgroundImage: //AssetImage("assets/images/pro.jpeg"),
            NetworkImage(
              usersinfo['pictureurl']!)
               ),
             ),
        
        SizedBox(width: 10,)
        //)
      ],
    ),
      body:currentIndex == 0 ?  HomePageWidget() : 
      currentIndex == 1 ? CourseList() :
      currentIndex == 2 ?ChampionScreen():
      currentIndex == 3 ? LevelScreen():
               Container(
                  child: Text("Hello"),
                ),


      //TODO:Custom Navigation Bar for scrolling pages 
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
        height: gWidth*.155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0,10),
            )
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.symmetric(horizontal: gWidth*.024),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            //index = [0,1,2,3]
            onTap: () {
              //Changing the variable
              setState(() {
                currentIndex = index;
                titleOfScreen=ListOfTitleScreen[index];
                HapticFeedback.lightImpact();
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Stack(
              children: [
                //for adding(green for now) color to the Selected item
                //start
                SizedBox(
                  width: gWidth*.2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? gWidth*0.12 : 0,
                      width: index == currentIndex ? gWidth*0.2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex ? PrimaryColor.withOpacity(.2) : Colors.transparent, 
                        borderRadius: BorderRadius.circular(20),
                      ),
                      ),
                  ),
                ),
                //end
                
                Container(
                  width: gWidth*.2125,
                  alignment: Alignment.center,
                  child: Icon(
                    ListOfIcon[index],
                    size: gWidth*.076,
                    color: index == currentIndex ? PrimaryColor : Colors.black26,
                  ),
                )
              ],
            ),
          ),
          ),
      ),
    );
  }
}


class HomePageWidget extends StatelessWidget {
   HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
    children: [
      SizedBox(height: 20,),
      //TODO:Carousel Slider Scetion 
      //Start
      Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: PrimaryColor,
                    blurRadius: 6,
                    offset: Offset(0,3)
                    ),],
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/chess01.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: PrimaryColor,
                    blurRadius: 6,
                    offset: Offset(0,3)
                    ),],
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image:AssetImage("assets/images/chess02.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: PrimaryColor,
                    blurRadius: 6,
                    offset: Offset(0,3)
                    ),],
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/chess03.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],    
          )
      ),
     // Image(image: AssetImage("assets/images/champion/carlsen2.jpg"),)
    ],
    )
  ,
    );
    //end
  }




}


List<IconData> ListOfIcon =[
  LineAwesomeIcons.home,
  LineAwesomeIcons.book,
  LineAwesomeIcons.chess_queen,
  LineAwesomeIcons.puzzle_piece,
];

List<String> ListOfTitleScreen=[
  "Home Screen",
  "Course Screen",
  "Games",
  "Puzzles",
];


class Place {
  Place([this.title = '', this.description = '', this.image='',     this.value=0.0]);
  String title;
  String description;
  String image;
  double value;
}

