import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Firebase/authentication.dart';
import '../Utils/constrant.dart';

//THE SIZEDBOX WIDGETS FOR HEIGH AND WIDTH 
class Space extends StatelessWidget {
  Space({super.key, this.spaceH,this.spaceW});
  double? spaceH;
  double? spaceW;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spaceH,
      width: spaceW,
    );
  }
}


//THE PROFILE MENU LIST TILE  
class ProfileMenuWidgets extends StatelessWidget {
  const ProfileMenuWidgets({
    super.key,
    required this.title,
    required this.icon,
    required this.Onpress,
    this.endIcon = true,
    this.textColor,
    this.IconColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback Onpress;
  final bool endIcon;
  final Color? textColor;
  final Color? IconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: Onpress,
      shape: const StadiumBorder(),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.05),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icon,
          color: IconColor != null ? IconColor : PrimaryColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(.05),
                borderRadius: BorderRadius.circular(100),
              ),
              child:  Icon(
                iskurdish == true ? LineAwesomeIcons.angle_left : LineAwesomeIcons.angle_right,
                color: Colors.grey,
                size: 18,
              ),
            )
          : null,
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


//FACEBOOK LOGIN BUTTON AND MAUTHENTICATION
class FacebookButton extends StatelessWidget {
   FacebookButton({
    Key? key,
  }) : super(key: key);
  Map getuser = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: gWidth/1.63,
      height: gHeight/15,
      child: ElevatedButton(
        onPressed: () async{
          try{
            //FACEBOOK AUTHENTICATION METHOD
           final authentications authf = authentications(); 
           await authf.fbauth();
           SharedPreferences shpref = await SharedPreferences.getInstance();
           shpref.setBool("isgoogle", false);
            Navigator.pushNamedAndRemoveUntil(context,'/homepage', ModalRoute.withName('/'));
          } catch(e){
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            title: 'error',
            text: "Please try again....",
            confirmBtnColor: Colors.white,
            confirmBtnTextStyle:const TextStyle(color: Colors.black)
              );
          }
             
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 238, 238, 238)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        child: Row(
          children: [
            Space(spaceW: 15,),
            SizedBox(width: 35,
            height: 35,
            child: Image.asset("assets/icons/facebook01.png"),
            ),
            Space(spaceW: 35,),
            Text("fb".tr,
            style:const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),)
          ],
        ),
      )
    );
  }
}

//GOOGLE LOGIN BUTTON AND MAUTHENTICATION
class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: gWidth/1.63,
      height: gHeight/15,
      child: ElevatedButton(
        onPressed: () async{
            try{
              //GOOGLE AUTHENTICATION METHOD
              authentications authg = authentications();
              await authg.gauth();
              SharedPreferences shpref = await SharedPreferences.getInstance();
              shpref.setBool("isgoogle", true);
              Navigator.pushNamedAndRemoveUntil(context,'/homepage', ModalRoute.withName('/'));  
            } catch(e){
              QuickAlert.show(
                context: context,
                type: QuickAlertType.error,
                title: 'error',
                text: "Please try again....",
                confirmBtnColor: Colors.white,
                confirmBtnTextStyle: const TextStyle(color: Colors.black)
                );
            }
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 238, 238, 238)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        child: Row(
          children: [
            Space(spaceW: 15,),
            SizedBox(width: 35,
            height: 35,
            child: Image.asset("assets/icons/google.png"),
            ),
            Space(spaceW: 35,),
            Text("google".tr,
            style:const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),)
          ],
        ),
      )
    );
  }
}

