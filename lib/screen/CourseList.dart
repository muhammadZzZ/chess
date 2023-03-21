import 'package:echessapp/Utils/constrant.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import 'PDFView.dart';



class CourseList extends StatelessWidget {
   CourseList({super.key});
  
  final instdatapath = FirebaseStorage.instance.ref();
  late ListResult listofcourses ;
  late ListResult listofimages;
  late List<ListResult> chapnumbers= []; 
  late ListResult chap;
  late String img;
  late List<String> imglist;
  
   Future<void>? getcourses(Reference ref)async {
    
    listofcourses = await ref.listAll();
    
    listofimages = await storage(instdatapath.child("courseimages"));
    
  }

  @override
  Widget build(BuildContext context) {
    Reference datapath = iskurdish ? instdatapath.child("kurdishcourses"): instdatapath.child("courses");
    return  
       FutureBuilder(future: getcourses(datapath),
         builder:(context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
          return Scaffold(
          body: Stack(
            children: [
                Container(
                  padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /6.3 ,left: 30,right: 30),
                  color: PrimaryColor,
                  height: MediaQuery. of(context). size. height /3.3,
                  width: double.infinity,
                  child: const Text("All Courses",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
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
                                  courseimagess[index % 3]
                                 // imglist[index]
                                ),
                            ),
                            const SizedBox(width: 15,),
                            
                              
                              
                                Expanded(flex: 15,
                                  child: Text(listofcourses.items[index].name.substring(0,listofcourses.items[index].name.length - 4),style: const TextStyle(fontSize: 14,
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
           
             );
           
          }
           return Scaffold( //TODO: the loading screen while the courses loading
          body:  Stack(
              children: [
                  Container(
                    padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /6.3 ,left: 30),
                    color: Color.fromARGB(255, 219, 218, 218),
                    height: MediaQuery. of(context). size. height /3.3,
                    width: double.infinity,
                    
                  ),
                  Shimmer.fromColors(  //TODO: this used for loading animation
            highlightColor: Colors.white,
            baseColor: Color.fromARGB(255, 197, 196, 196),
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
                           decoration: BoxDecoration( color: Color.fromARGB(255, 186, 185, 185),
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
          
           
             ); 
         },
       );
    
  }
}
 