import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

import 'root.dart';

 void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefinst = await SharedPreferences.getInstance();
  isdarkmode = prefinst.getBool("isdarkmode") ?? false;
  tm.toggleTheme(isdarkmode);
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Root());
}