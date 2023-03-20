import 'dart:convert';

import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/languages.dart';
import 'package:echessapp/models/theme/ThemeManage.dart';
import 'package:echessapp/screen/Chess_play_screen.dart';
import 'package:echessapp/screen/HomePage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screen/LoginPage.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

thememanage tm = thememanage();

class _RootState extends State<Root> {
  Widget page = const LoginPage();
  
  @override
  void dispose() {
    tm.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    tm.addListener(themeListener);
    isloggedin();
    super.initState();
  }

  // LISTENER TO LISTEN TO CHANGES HAPPEN TO THE DAMN PAGE
  themeListener(){
    if (mounted) {
      setState(() {
        
      });
    }
  }

  void isloggedin() async{
    tolken = await fssinst.read(key: "token");
    if (tolken != null) {
      String? conv = await fssinst.read(key: "userdata");
      usersinfo = json.decode(conv!);
      setState(() {
        page = HomePage();
        
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: iskurdish ? Locale("ar","IQ") : Locale("en","US"),
      fallbackLocale: Locale('en','US'),
      translations: lang(),
      debugShowCheckedModeBanner: false,
      theme: light,
      darkTheme: dark,
      themeMode: tm.thememod,
      home:    page,
      initialRoute: '/',
      routes: {
        '/loginpage':(context) =>  LoginPage(),
        '/homepage':(context) =>  HomePage(),
        //'/ChessPlayScreen':(context) =>  ChessPlayScreen(),
        
      }
      
    );
  }
}
