import 'package:echessapp/screen/ChapterList.dart';
import 'package:echessapp/screen/HomePage.dart';
import 'package:echessapp/screen/courselist.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'screen/LoginPage.dart';

class Root extends StatelessWidget {
  const Root({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
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