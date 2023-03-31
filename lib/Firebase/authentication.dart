

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/Utils/constrant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class authentications{

  //FIREBASE AUTHENTICATION INITIALIZE
  final FirebaseAuth inst = FirebaseAuth.instance;
  //FIREBASE FIRESTORE INITIALIZE
  final FirebaseFirestore ffstore = FirebaseFirestore.instance;
  
  Future<bool> fbauth()  async{
    bool rresult = false;

              // LOGIN WITH FACEBOOK
              //START
              final LoginResult result = await FacebookAuth.instance.login(permissions: (['email', 'public_profile',]));
              final ftoken = result.accessToken!.token;
              final AuthCredential Fcred = FacebookAuthProvider.credential(ftoken);
              final Fusercred = await inst.signInWithCredential(Fcred);
              //END

              //SAVE USERS DATA TO THE FIREBASE
              //START
              User? fuser = Fusercred.user;
              if (fuser != null){
                if(Fusercred.additionalUserInfo!.isNewUser){
                  await ffstore.collection('users').doc(fuser.uid).set({
                    'username':fuser.displayName,
                    'uid':fuser.uid,
                    'email':fuser.email,
                    'pictureurl':fuser.photoURL,
                    'city': "",
                    'gender':"",
                });
                }
                //END

                //GET USERS DATA FROM FIRESTORE
                //START
                await ffstore.collection('users').doc(fuser.uid).get().then((value) {
                  usersinfo = value.data()!;
                  return ;
                });
                final conv = json.encode(usersinfo);
                await fssinst.write(key: "token", value: Fusercred.credential!.token.toString());
                await fssinst.write(key: "userdata", value: conv);
                //END
              } 
              
             return rresult;
  }

  Future<bool> gauth() async{
    bool result = false;
           
           // LOGIN WITH GOOGLE
           //START
           final GoogleSignIn gsign = GoogleSignIn();
           final GoogleSignInAccount? guser = await gsign.signIn();
           final GoogleSignInAuthentication gauth = await guser!.authentication;
           final AuthCredential cred = GoogleAuthProvider.credential(idToken: gauth.idToken ,accessToken: gauth.accessToken);
           final UserCredential usercred = await  inst.signInWithCredential(cred);
           //END

              //SAVE USERS DATA TO THE FIREBASE
              //START
              User? googleuser = usercred.user;
              if (googleuser != null){
                if(usercred.additionalUserInfo!.isNewUser){
                  await ffstore.collection('users').doc(googleuser.uid).set({
                    'username':googleuser.displayName,
                    'uid':googleuser.uid,
                    'email':googleuser.email,
                    'pictureurl':googleuser.photoURL,
                    'city': "",
                    'gender':"",
                    
                });
                }
              //END

                //GET USERS DATA FROM FIRESTORE
                //START
                await ffstore.collection('users').doc(googleuser.uid).get().then((value) {
                  usersinfo = value.data()!;
                  return ;
                });
                 final conv = json.encode(usersinfo);
                await fssinst.write(key: "token", value: usercred.credential!.token.toString());
                await fssinst.write(key: "userdata", value: conv);
                //END

              }
              
    return result;
  }

}