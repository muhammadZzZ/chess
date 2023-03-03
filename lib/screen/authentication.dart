

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/Utils/constrant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';


class authentications{
  
  final FirebaseAuth inst = FirebaseAuth.instance;
  final FirebaseFirestore ffstore = FirebaseFirestore.instance;
  User get user => inst.currentUser!;
  Future<bool> fbauth()  async{
    bool rresult = false;
   
              final LoginResult result = await FacebookAuth.instance.login(permissions: (['email', 'public_profile']));
              final ftoken = result.accessToken!.token;
              final AuthCredential Fcred = FacebookAuthProvider.credential(ftoken);
              final Fusercred = await inst.signInWithCredential(Fcred);
              User? fuser = Fusercred.user;

              if (fuser != null){
                if(Fusercred.additionalUserInfo!.isNewUser){
                  await ffstore.collection('users').doc(fuser.uid).set({
                    'username':fuser.displayName,
                    'uid':fuser.uid,
                    'email':fuser.email,
                    'pictureurl':fuser.photoURL
                });
                }
                await ffstore.collection('users').doc(fuser.uid).get().then((value) {
                  usersinfo = value.data()!;
                  return ;
                });
            
              } 
              
             return rresult;
  }

  Future<bool> gauth() async{
    bool result = false;
    
           final GoogleSignIn gsign = GoogleSignIn();
           final GoogleSignInAccount? guser = await gsign.signIn();
           final GoogleSignInAuthentication gauth = await guser!.authentication;
           final AuthCredential cred = GoogleAuthProvider.credential(idToken: gauth.idToken ,accessToken: gauth.accessToken);
           final UserCredential usercred = await  inst.signInWithCredential(cred);
           User? googleuser = usercred.user;
           
              if (googleuser != null){
                if(usercred.additionalUserInfo!.isNewUser){
                  await ffstore.collection('users').doc(googleuser.uid).set({
                    'username':googleuser.displayName,
                    'uid':googleuser.uid,
                    'email':googleuser.email,
                    'pictureurl':googleuser.photoURL,
                    
                });
                }
                await ffstore.collection('users').doc(googleuser.uid).get().then((value) {
                  usersinfo = value.data()!;
                  return ;
                });
                 
              }
              
    return result;
  }

}