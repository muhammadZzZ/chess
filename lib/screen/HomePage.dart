import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/screen/CourseList.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Utils/constrant.dart';
import '../Widgets/repeated_widgets.dart';
import 'ProfileScreens/Profile_edite.dart';
import 'authentication.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final  cu = FirebaseAuth.instance.currentUser!;
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
        onPressed: () {
          
        },
        icon: Icon(MdiIcons.menu,color: Colors.black,)
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: ClipOval(
            //child: Image.asset("assets/images/chessbackground.png")),
          child: ClipOval(child: Image.network(cu.photoURL!)),
         )
        )
      ],
    ),
      body:currentIndex == 0 ?  HomePageWidget() : 
      currentIndex == 1 ? CourseList() :
      currentIndex == 2 ?Container(
                  //TODO:Creating Profile Screen
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Space(spaceH: 10),
                        //TODO:create a profile circle
                        Stack(
                          children: [
                            Container(
                              height: 135,
                              width: 135,
                              alignment: Alignment.topCenter,
                              child:  CircleAvatar(
                                radius: 90,
                                backgroundImage: NetworkImage(
                                  cu.photoURL!,
                                )
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: GestureDetector(
                                //Navigate to the edite profile screen 
                                onTap: () => Get..to(()=> ProfileEdite()),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: PrimaryColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Icon(
                                    LineAwesomeIcons.alternate_pencil,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Space(spaceH: 20),
                        Text(
                          cu.displayName!, //TODO: returning the name
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Space(spaceH: 5),
                        Text(
                          cu.email!, //TODO: returning the email
                          style: const TextStyle(fontSize: 16),
                        ),
                        Space(spaceH: 30),
                        const Divider(),
                        Space(spaceH: 10),
                        //MENU
                        //TODO: creating MENU
                        ProfileMenuWidgets(
                          title: "Edite Profile",
                          icon: LineAwesomeIcons.user_edit,
                          Onpress: () => Get..to(()=> ProfileEdite()),
                        ),
                        Space(spaceH: 10),
                        ProfileMenuWidgets(
                          title: "Change Theme",
                          icon: LineAwesomeIcons.moon,
                          Onpress: () {},
                        ),
                        Space(spaceH: 10),
                        ProfileMenuWidgets(
                          title: "About us",
                          icon: LineAwesomeIcons.info,
                          Onpress: () {},
                        ),
                        Space(spaceH: 10),
                        const Divider(
                          color: Colors.grey,
                        ),
                        Space(spaceH: 10),
                        ProfileMenuWidgets(
                            title: "Logout",
                            icon: LineAwesomeIcons.alternate_sign_out,
                            Onpress: () async{
                              await FirebaseAuth.instance.signOut(); //TODO: logout from google
                              if(isgoogle) {
                                await GoogleSignIn().signOut();
                              } else {
                                await FacebookAuth.instance.logOut(); //TODO: logout from facebook
                              }
                               Navigator.pushNamedAndRemoveUntil(context,'/loginpage', ModalRoute.withName('/')); //TODO: return to login screen
                            },
                            endIcon: false,
                            textColor: Colors.red,
                            IconColor: Colors.red),
                      ],
                    ),
                  ),
                )
              : Container(
                  child: Text("Hello"),
                ),


      //TODO:Custom Navigation Bar for scrolling pages 
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
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
                        color: index == currentIndex ? Colors.greenAccent.withOpacity(.2) : Colors.transparent, 
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
                    color: index == currentIndex ? Colors.greenAccent : Colors.black26,
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
  const HomePageWidget({
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
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://images.pexels.com/photos/814133/pexels-photo-814133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://images.pexels.com/photos/112854/pexels-photo-112854.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://images.pexels.com/photos/51930/chess-game-chessboard-glass-51930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],    
          )
      ),
    ],
    )
  ,
    );
    //end
  }
}



List<IconData> ListOfIcon =[
  Icons.home_rounded,
  Icons.article_sharp,
  Icons.book_rounded,
  Icons.person_rounded,
];

List<String> ListOfTitleScreen=[
  "Home Screen",
  "Course Screen",
  "Profile Screen",
  "Setting Screen",
];


class Place {
  Place([this.title = '', this.description = '', this.image='',     this.value=0.0]);
  String title;
  String description;
  String image;
  double value;
}