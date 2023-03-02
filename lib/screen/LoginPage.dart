import 'dart:convert';

import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/screen/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'HomePage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    Size siize=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(16),
          width: gWidth,
          height: gHeight,
          child: Column(
            children: [
              //image
              Container(
                width: gWidth,
                height: gHeight/4.5,
              ),
              //text
              Container(
                margin: EdgeInsets.only(top: 10,right: 240),
                width: gWidth/3,
                height: gHeight/15,
                //color: Colors.red,
                child: FittedBox(
                  child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              //text 
               Container(
                margin: const EdgeInsets.only(right: 150),
                width: gWidth/2,
                height: gHeight/18,
                //color: Colors.red,
                child: const FittedBox(
                  child: Text("Please sign in to use Echess",style: TextStyle(fontSize: 20),),
                ),
              ),
              const SizedBox(height:40 ,),
              //Google Login Button
              const LoginButton(),
              const SizedBox(height: 25,),
              FacebookButton(),
              const SizedBox(height: 25,),
           
             
               
            ],
          ),
        )
      ),
    );
  }
}

class appleButton extends StatelessWidget {
  const appleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: gWidth,
      height: gHeight/15,
      child: ElevatedButton(
        onPressed: () {
         
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          //elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        ),
        child: Row(
          children: [
            const SizedBox(width: 30,),
            SizedBox(width: 35,
            height: 35,
            child: Image.asset("assets/icons/apple.png"),
            ),
            const SizedBox(width: 40,),
            const Text("Login with Apple",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),)
          ],
        ),
      )
    );
  }
}

class FacebookButton extends StatelessWidget {
   FacebookButton({
    Key? key,
  }) : super(key: key);
  Map getuser = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: gWidth,
      height: gHeight/15,
      child: ElevatedButton(
        onPressed: () async{
          try{

                 final authentications authf = authentications(); //fb authentication
                 await authf.fbauth();
                  Navigator.pushNamedAndRemoveUntil(context,'/homepage', ModalRoute.withName('/'));

          }catch(e){
              showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('error accured'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('please try again later!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
          }
             
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
          backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(24 ,119, 242,1)),
          //elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        ),
        child: Row(
          children: [
            const SizedBox(width: 30,),
            SizedBox(width: 35,
            height: 35,
            child: Image.asset("assets/icons/facebook.png"),
            ),
            const SizedBox(width: 40,),
            const Text("Login with Facebook",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),)
          ],
        ),
      )
    );
  }
}

//Login Button 
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: gWidth,
      height: gHeight/15,
      child: ElevatedButton(
        onPressed: () async{
            try{

               authentications authg = authentications(); //google authentication
               await authg.gauth();
               isgoogle = true;
               Navigator.pushNamedAndRemoveUntil(context,'/homepage', ModalRoute.withName('/'));
                
            }catch(e){
                    showDialog<void>(
                          context: context,
                          barrierDismissible: false, 
                          builder: (BuildContext context) {
                          return AlertDialog(
                          title: const Text('error accured'),
                          content: SingleChildScrollView(
                          child: ListBody(
                          children: const <Widget>[
                          Text('please try again later!'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                              TextButton(
                                child: const Text('ok'),
                                  onPressed: () {
                                        Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
           
        },

        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 238, 238, 238)),
          //elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        ),
        child: Row(
          children: [
            const SizedBox(width: 30,),
            SizedBox(width: 35,
            height: 35,
            child: Image.asset("assets/icons/google.png"),
            ),
            const SizedBox(width: 40,),
            const Text("Login with Google",
            style: TextStyle(
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

