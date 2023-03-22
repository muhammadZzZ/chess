import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'root.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // INITIALIZING FIREBASE
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // USED TO HIDE NAVIGATION BAR AND STATUS BAR ON THE ANDROID
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [],);

  // CREATING AN INSTANCE OF SHAREDPREFERENCES TO STORE VARIABLES INSIDE AN APP DIRECTORY
  SharedPreferences prefinst = await SharedPreferences.getInstance();

  // WE CHECK IF THE MODE IS DARK BY RETURNING THE VALUE WE STORED INTO A LOCAL VARIABLE
  isdarkmode = prefinst.getBool("isdarkmode") ?? false;
  tm.toggleTheme(isdarkmode);

  // WE CHECK IF THE LANGUAGE IS KURDISH SELECTED
  iskurdish = prefinst.getBool("iskurdish") ?? false ;
  
  runApp(const Root());
}