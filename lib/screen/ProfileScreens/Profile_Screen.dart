import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../Utils/constrant.dart';
import '../../Widgets/repeated_widgets.dart';
import 'Profile_edite.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
          Container(
            height: gHeight*.1,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  splashRadius: 20,splashColor: PrimaryColor.withOpacity(.5),
                  onPressed: ()=> Get..back(),
                  icon: Icon(
                    LineAwesomeIcons.arrow_left
                  ),
              ),
              Space(spaceW: 70,),
              Text(
                "Profile Screen",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
                )
             ],
          ),
          ),
           Container(
                        //TODO:Creating Profile Screen
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
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
                                        usersinfo['pictureurl']!,
                                      ),
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
                              //TODO:return the ser name 
                              Text(
                                usersinfo['name']!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Space(spaceH: 5),
                              //TODO:return the user email
                              Text(
                                usersinfo['email']!,
                                style: TextStyle(fontSize: 16),
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
                                usersinfo = {};
                              } else {
                                await FacebookAuth.instance.logOut(); //TODO: logout from facebook
                                usersinfo = {};
                              }
                               Navigator.pushNamedAndRemoveUntil(context,'/loginpage', ModalRoute.withName('/')); //TODO: return to login screen
                                  },
                                  endIcon: false,
                                  textColor: Colors.red,
                                  IconColor: Colors.red
                                  ),
                            ],
                          ),
                        ),
                      ),
         ],
       ),
     ),
   );
  }
}

