

import 'package:echessapp/screen/ChapterList.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';



class CourseList extends StatelessWidget {
   CourseList({super.key});
  
  final instdatapath = FirebaseStorage.instance.ref().child("courses/");
  late ListResult listofcourses ;
  late List<ListResult> chapnumbers= []; 
  late ListResult chap;

   Future<void>? getcourses(Reference ref)async {
    
    listofcourses = await ref.listAll();
    for(int i = 0;i < listofcourses.prefixes.length;i++) // for returning course names
    {
       chap = await storage(listofcourses.prefixes[i]);
       chapnumbers.add(chap);
      
    }
    
  }

  @override
  Widget build(BuildContext context) {
    
    return  
       FutureBuilder(future: getcourses(instdatapath),
         builder:(context, snapshot) {
         
          if(snapshot.connectionState == ConnectionState.done){
            
                return Scaffold(
          body: Stack(
            children: [
                Container(
                  padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /6.3 ,left: 30),
                  color: Colors.blue,
                  height: MediaQuery. of(context). size. height /3.3,
                  width: double.infinity,
                  child: const Text("All Courses",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /4.0),
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 0),
                    itemCount: listofcourses.prefixes.length,
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
                           final datapathdetail = await storage(instdatapath);
                         final foldername = datapathdetail.prefixes[index].name;
                         final folders = datapathdetail.prefixes[index];
                         final chapnamedetail = await storage(folders);
                         final chapnames = chapnamedetail.items;
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  ChapterList(coursepath: foldername,chapname: chapnames,),
                            ),
                        );
                        }catch(e){



                        }
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                         decoration: BoxDecoration( color: Colors.white,
                         borderRadius: BorderRadius.circular(8.0),
                         ),
                        height: 75,
                        width: 50,
                        child: Row(
                          children: [
                            const CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 231, 227, 227),
                            ),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text(listofcourses.prefixes[index].name,style: const TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold),),
                                const SizedBox(height: 10,),
                                 Text("${chapnumbers[index].items.length} chapters",style: TextStyle(fontSize: 10),)
                              ],
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
           return const Scaffold();
         },
       );
    
  }
}
 