import 'package:echessapp/screen/HomePage.dart';
import 'package:echessapp/screen/courselist.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screen/LoginPage.dart';

class Root extends StatelessWidget {
  const Root({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        
      ),
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