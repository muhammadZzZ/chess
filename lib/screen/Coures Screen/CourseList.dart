import 'package:echessapp/Utils/constrant.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import 'PDFView.dart';



class CourseList extends StatelessWidget {
   CourseList({super.key});
  
  // CREATING ISTANCE FOR FIREBASE STORAGE
  final instdatapath = FirebaseStorage.instance.ref();

  late ListResult listofcourses ;
  late ListResult listofimages;
  
  // GETTING ALL THE COURSE DATA AND IMAGES FROM FIREBASE STORAGE
  //START
   Future<void>? getcourses(Reference ref)async {
  
    listofcourses = await ref.listAll();
    listofimages = await storage(instdatapath.child("courseimages"));

  }
  //END

  @override
  Widget build(BuildContext context) {

    // REFERENCE TO THE LOCATION OF THE FILES THAT STORED
    Reference datapath = iskurdish ? instdatapath.child("kurdishcourses"): instdatapath.child("courses");

    return  
       FutureBuilder(future: getcourses(datapath),
         builder:(context, snapshot) {

          //IF ALL THE DATA HAS BEEN SAVED IN THE VARIABLES (listofcourses and listofimages)
          if(snapshot.connectionState == ConnectionState.done){
          return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom:10.0),
            child: Stack(
              children: [
                  Container(
                    padding:  EdgeInsets.only(top:gHeight/6.3 ,left: 30,right: 30),
                    color: PrimaryColor,
                    height:gHeight/3.3,
                    width: gWidth,
                    child:  Text("titleofcourse".tr,style:const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /4.0),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 0),
                      itemCount: listofcourses.items.length,
                      itemBuilder: (BuildContext context ,int index) {
                        return Container(            
                        padding:const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                        child: Card(
                          elevation: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          shadowColor: const Color.fromARGB(255, 255, 255, 255),
                          child: InkWell(
                            onTap: () async{

                              // GET DATA FROM FIREBASE STORAGE AND PROCESS THEM TO DISPLAY EACH OF THEM AND GET THEIR DATA TO MEMORY
                              //START
                              try{
                                 final datapathdetail = await storage(datapath);
                              final Uint8List? pdfdata = await datapathdetail.items[index].getData(databytes);  //getting the data for pdf as bits
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>  PDFview(pdfdatabits: pdfdata, headername: listofcourses.items[index].name.substring(0,listofcourses.items[index].name.length - 4,)), //passing pdfdata to pdfview page
                                ),
                              );
                          }catch(e){

                            }
                            //END

                            },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                           decoration: BoxDecoration( //color: Colors.white,
                           borderRadius: BorderRadius.circular(8.0),
                           ),
                          height: 75,
                          width: 50,
                          child: Row(
                            children: [
                               CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 231, 227, 227),
                                  backgroundImage: NetworkImage(
                                    
                                    //REPEAT IMAGES
                                    courseimagess[index % 3]
                                  ),
                              ),
                              const SizedBox(width: 15,),
                                  Expanded(flex: 15,
                                    child: Text(

                                      //USED TO RETURN THE PDF NAME EXCLUDING EXTENSION
                                      listofcourses.items[index].name.substring(0,listofcourses.items[index].name.length - 4),
                                      style: const TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.bold),),
                                  ),
                              Flexible(flex: 3,child: Container(),),
                              const Icon(Icons.arrow_forward_rounded),
                                ],
                              ),
                            ),
                          ),
                        ),
                        );
                      },
                      ),
                  ),
              ]
            ),
          ),
        );
          }
          // IF NOT THE LOADING PAGE WILL BE DISPLAYED WHILE THE COURSE LOADING
           return Scaffold(  
            body:  Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: Stack(
                  children: [
                      Container(
                        padding:  EdgeInsets.only(top:gHeight/6.3 ,left: 30),
                        color:const Color.fromARGB(255, 219, 218, 218),
                        height:gHeight/3.3,
                        width:gWidth,
            
                      ),
                      //THIS USED FOR LOADING ANIMATION
                      Shimmer.fromColors( 
                       highlightColor: Colors.white,
                       baseColor:const Color.fromARGB(255, 197, 196, 196),
                       child:
                        Container(
                          padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /4.0),
                          child: ListView.builder(
                            padding: const EdgeInsets.only(top: 0),
                            itemCount: 6,
                            itemBuilder: (BuildContext context ,int index) {
                              return Container(
                              padding:const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                              child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                              shadowColor: const Color.fromARGB(255, 255, 255, 255),
                              child: 
                               Container(
                                padding: const EdgeInsets.all(15),
                                 decoration: BoxDecoration( color: const Color.fromARGB(255, 186, 185, 185),
                                 borderRadius: BorderRadius.circular(8.0),
                                 ),
                                height: 75,
                                width: 50,
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                        backgroundColor: Colors.grey,
                                    ),
                                    const SizedBox(width: 15,),
            
                                    Flexible(flex: 3,child: Container(),),
            
                                  ],
                                ),
                              ),
                              ),
                                 );
                            },
                            ),
                        ),
                        ),
                  ]
              ),
            ),
             ); 
         },
       );
    
  }
}
 