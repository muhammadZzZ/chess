import 'dart:convert';
import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/languages.dart';
import 'package:echessapp/models/theme/ThemeManage.dart';
import 'package:echessapp/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screen/LoginPage.dart';


class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

//INITIALIZING A GLOBAL VARIABLE FOR USING THEME MANAGER
thememanage tm = thememanage();

class _RootState extends State<Root> {

  // A VARIABLE THAT DETERMINE THE CURRENT PAGE
  Widget page = const LoginPage();
  
  @override
  void dispose() {

    // A LISTENER TO LISTEN IF THE USER CHANGED THE THEME: SO IT CAN DELETE IT AFTER THE APP FINISH
    tm.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {

    // A LISTENER TO LISTEN IF THE USER CHANGED THE THEME: SO IT GET INITIALIZED WHEN THE PAGE OPENED
    tm.addListener(themeListener);

    // IMPLEMENTING THE FUNCTION
    isloggedin();

    super.initState();
  }

  // A LISTENER TO LISTEN IF THE USER CHANGED THE THEME AND REFERESH IT AS SOON IT CHANGED
  themeListener(){
    if (mounted) {
      setState(() {
      });
    }
  }
  
  // TO CHECK IF THE USER ALREADY LOGGED IN
  //START
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
  //END
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // TO CHANGE THE LANGUAGE
      locale: iskurdish ? Locale("fa","IR") : Locale("en","US"),
      fallbackLocale: Locale('en','US'),

      // USING THIS CLASS TO GET THE TEXTS TO TRANSLATE
      translations: lang(),
      debugShowCheckedModeBanner: false,

      // SELECTING THEME
      theme: light,

      //SELECTING DARKTHEM IF THE USER CHANGED THE THEME TO DARK MODE
      darkTheme: dark,
      themeMode: tm.thememod,

      home:    HomePage(),
      initialRoute: '/',
      routes: {
        
        '/loginpage':(context) => const LoginPage(),
        '/homepage':(context) =>  HomePage(),
        
      }
      
    );
  }
}
