import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'root.dart';

 void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // used to hide android status and navigation bar
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [],);

  // creating an instance of sharedpreferences to store variables inside an apps directory
  SharedPreferences prefinst = await SharedPreferences.getInstance();

  // we check if the mode is dark by returning the value we stored into a local variable
  isdarkmode = prefinst.getBool("isdarkmode") ?? false;
  tm.toggleTheme(isdarkmode);

  iskurdish = prefinst.getBool("iskurdish") ?? false ;
  
  runApp(const Root());
}