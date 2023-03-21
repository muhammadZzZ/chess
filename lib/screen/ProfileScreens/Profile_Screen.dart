import 'package:echessapp/root.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Utils/constrant.dart';
import '../../Widgets/repeated_widgets.dart';
import 'Profile_edite.dart';
class ProfilePage extends StatefulWidget {
   ProfilePage({super.key});



  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 
 
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
                                      onTap: () => Get..off(()=> ProfileEdite()),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: PrimaryColor,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child:  Icon(
                                          LineAwesomeIcons.alternate_pencil,
                                          color: Theme.of(context).hintColor,
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
                                usersinfo['username']!,
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
                                title: "Edit Profile",
                                icon: LineAwesomeIcons.user_edit,
                                Onpress: () => Get..off(()=> ProfileEdite()),
                              ),
                              Space(spaceH: 10),
                              ProfileMenuWidgets(
                                endIcon: false,
                                title: "Change Theme",
                                icon: tm.thememod == ThemeMode.light? LineAwesomeIcons.sun:LineAwesomeIcons.moon,
                                Onpress: () async{

                                    SharedPreferences pref = await SharedPreferences.getInstance();
                                      if (tm.thememod == ThemeMode.light) {
                                     tm.toggleTheme(true);
                                     pref.setBool("isdarkmode", true);
                                   }else {
                                     tm.toggleTheme(false);
                                     pref.setBool("isdarkmode", false);
                                   }
                                    setState(() {
                                      
                                    });
                                   
                                   
                                },
                              ),
                              Space(spaceH: 10),
                              ProfileMenuWidgets(
                                endIcon: false,
                                title: "change language",
                                icon: LineAwesomeIcons.language,
                                Onpress: () async{
                                  SharedPreferences sh = await SharedPreferences.getInstance();
                                  if (Get.locale.toString() == 'ar_IQ') {
                                    Get.updateLocale(Locale('en','US'));
                                    sh.setBool("iskurdish", false);
                                    iskurdish = false;
                                  } else {
                                    Get.updateLocale(Locale('ar','IQ'));
                                    sh.setBool("iskurdish", true);
                                    iskurdish = true;
                                  }
                                  
                                },
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
                                    SharedPreferences shpref = await SharedPreferences.getInstance();
                                    isgoogle = shpref.getBool("isgoogle") ?? false;
                              if(isgoogle) {
                                await GoogleSignIn().signOut();
                                usersinfo = {};
                              } else {
                                await FacebookAuth.instance.logOut(); //TODO: logout from facebook
                                usersinfo = {};
                              }
                              fssinst.deleteAll();
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

