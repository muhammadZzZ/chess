import 'package:echessapp/root.dart';
import 'package:echessapp/screen/HomePage.dart';
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
   const ProfilePage({super.key});



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
            padding:const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  splashRadius: 20,splashColor: PrimaryColor.withOpacity(.5),
                  onPressed: ()=> Get..off(()=>HomePage()),
                  icon: Icon(
                    iskurdish == true ? LineAwesomeIcons.arrow_right :LineAwesomeIcons.arrow_left,
                    color: isdarkmode ? Colors.white:Colors.black ,
                  ),
              ),
              Space(spaceW: 115,),
              Text(
                "ProfileTitle".tr,
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
                )
             ],
          ),
          ),
           Container(
            //PROFILE PAGE
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  //PROFILE CIRCLE IMAGE
                  Stack(
                    children: [
                      Container(
                        height: 135,
                        width: 135,
                        alignment: Alignment.topCenter,
                        child:  CircleAvatar(
                          radius: 90,
                          backgroundImage: 
                          NetworkImage(usersinfo['pictureurl']!,)
                          ),
                        ),
                      
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          // NAVIGATOR TO THE EDIT PROFILE PAGE
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
                  //RETURN USER SER NAME
                   Text(
                    
                    usersinfo['username']!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Space(spaceH: 5),
                  //RETURN USER EMAIL
                   Text(
                    
                    usersinfo['email']!,
                    style: TextStyle(fontSize: 16),
                  ),
                  Space(spaceH: 30),
                  const Divider(),
                  Space(spaceH: 10),

                  //CREATING MENU
                  //START
                  ProfileMenuWidgets(
                    title: "EditPro".tr,
                    icon: LineAwesomeIcons.user_edit,
                    Onpress: () => Get..off(()=> ProfileEdite()),
                  ),
                  Space(spaceH: 10),
                  ProfileMenuWidgets(
                    endIcon: false,
                    title: "theme".tr,
                    icon: tm.thememod == ThemeMode.light? LineAwesomeIcons.sun:LineAwesomeIcons.moon,
                    Onpress: () async{
                        SharedPreferences pref = await SharedPreferences.getInstance();
                          if (tm.thememod == ThemeMode.light) {
                         tm.toggleTheme(true);
                         pref.setBool("isdarkmode", true);
                         isdarkmode=true;
                       }else {
                         tm.toggleTheme(false);
                         pref.setBool("isdarkmode", false);
                         isdarkmode=false;
                       }
                        setState(() {});
                    },
                  ),
                  Space(spaceH: 10),
                  ProfileMenuWidgets(
                    endIcon: false,
                    title: "lan".tr,
                    icon: LineAwesomeIcons.language,
                    Onpress: () async{
                      SharedPreferences sh = await SharedPreferences.getInstance();
                      if (Get.locale.toString() == 'fa_IR') {
                        Get.updateLocale(const Locale('en','US'));
                        sh.setBool("iskurdish", false);
                        iskurdish = false;
                      } else {
                        Get.updateLocale(const Locale('fa','IR'));
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
                      title: "logout".tr,
                      icon: LineAwesomeIcons.alternate_sign_out,
                      Onpress: () async{
                        //LOGOUT FROM GGOGLE
                        await FirebaseAuth.instance.signOut(); 
                        SharedPreferences shpref = await SharedPreferences.getInstance();
                        isgoogle = shpref.getBool("isgoogle") ?? false;
                  if(isgoogle) {
                    await GoogleSignIn().signOut();
                    usersinfo = {};
                  } else {
                    //LOGOUT FROM FACEBOOK
                    await FacebookAuth.instance.logOut(); 
                    usersinfo = {};
                  }
                  fssinst.deleteAll();
                  //RETURN TO LOGIN PAGE
                   Navigator.pushNamedAndRemoveUntil(context,'/loginpage', ModalRoute.withName('/')); 
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

