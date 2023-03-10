import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/models/theme/ThemeManage.dart';
import 'package:echessapp/screen/HomePage.dart';
import 'package:echessapp/screen/courselist.dart';
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

  @override
  void dispose() {
    tm.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    tm.addListener(themeListener);
    super.initState();
  }
  themeListener(){
    if (mounted) {
      setState(() {
        
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      darkTheme: dark,
      themeMode: tm.thememod,
      home:    LoginPage(),
      initialRoute: '/',
      routes: {
        '/loginpage':(context) => const LoginPage(),
        '/homepage':(context) =>  HomePage(),
        
      }
      
    );
  }
}
Future<ListResult> getcourses(Reference ref)async {
    
    ListResult listofcourses = await ref.listAll();
    return listofcourses;
    
  }