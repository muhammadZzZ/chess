import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

//
final gWidth = Get.width;
final gHeight = Get.height;

//the Colors of the application

final PrimaryColor =Color.fromRGBO(118, 150, 86, 1) ;//rgb(118,150,86)
final SecondaryColor= Color.fromRGBO(238, 238, 210, 1);//rgb(238,238,210)
final DarkThemeColor = Color.fromRGBO(49, 46, 43, 1);//rgb(49,46,43)
final DragableColor = Color.fromRGBO(246, 246, 105, 1);//rgb(246,246,105)
final List DialogColor = [
  Color.fromRGBO(18, 192, 105, 1),//rgb(18,192,105) GREEN
  Color.fromRGBO(255, 200, 71, 1),// rgb(255,200,71) ERD
  ];//

//text
String userName ="Osama Hatam";
String userEmail ="Osama.hatam01@gmail.com";


//Images test for  carousel slider
final List<String> imageCarousel = [
"https://www.pexels.com/photo/white-chess-piece-on-top-of-chess-board-814133/",
"https://www.pexels.com/photo/black-and-white-chessboard-set-near-white-wall-112854/",
"https://www.pexels.com/photo/clear-glass-and-white-chess-piece-on-white-chess-board-with-black-background-51930/",
];

//
List<String> ListOfTitleScreen=[
  "Home Screen",
  "Course Screen",
  "Profile Screen",
  "Profile Screen",
];
final List<String> City = [
  'Erbil',
  'Sulemani',
  'Duhok',
  'Karkuk',
];

final List<String> Sex =[
  "Male",
  "Female",
];

bool isgoogle = false; // TODO: TO LOGOUT COMPLETY FROM EITHER GOOGLE OR FACEBOOK, THIS IS GLOBAL VARIABLE 

Map<String,dynamic> usersinfo = {};

final List<String> courseimagess = [
  "https://firebasestorage.googleapis.com/v0/b/cheearn-38f69.appspot.com/o/courseimages%2FHow%20the%20chess%20pieces%20move%20Step%20two%20image.jpeg?alt=media&token=adfcafa1-24be-499b-a36b-ad24d2169fcd",
  "https://firebasestorage.googleapis.com/v0/b/cheearn-38f69.appspot.com/o/courseimages%2FHow%20to%20install%20a%20chessboard%20step%20one%20image.jpeg?alt=media&token=e3fb878e-f2dc-4f13-9caa-e84e1f4bfe8e",
  "https://firebasestorage.googleapis.com/v0/b/cheearn-38f69.appspot.com/o/courseimages%2FLearning%20the%20rules%20of%20chess%20step%20three%20image.jpeg?alt=media&token=63e25640-3740-4aa2-bd00-0b4cd5d74167",
  
] ;

const databytes = 1024 * 1024 * 1024; //how many megabytes for memory

Future<ListResult> getcourses(Reference ref)async {
    
    ListResult listofcourses = await ref.listAll();
    return listofcourses;
    
  }

 Future<ListResult> storage(final _datapath)async {         
         ListResult listchapter = await _datapath.listAll();
         return listchapter;      
}

bool isdarkmode = false;


//themes
ThemeData light = ThemeData(
  iconTheme: IconThemeData(color: Colors.black26),
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white,titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20))
);

ThemeData dark = ThemeData(
  iconTheme: IconThemeData(color: SecondaryColor.withOpacity(0.3)),
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(backgroundColor: DarkThemeColor,titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))
  
);

String? tolken;

FlutterSecureStorage fssinst = const FlutterSecureStorage();





