import 'dart:io';
import 'package:echessapp/screen/CourseList.dart';
import 'package:echessapp/screen/PDFView.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';


class ChapterList extends StatelessWidget {
    ChapterList({super.key,required this.coursepath,required this.chapname});
    
    final coursepath;
    final inst = FirebaseStorage.instance.ref();  //instance of a project
    List<Reference>  chapname;

  @override
  Widget build(BuildContext context) {

    const databytes = 1024 * 1024; //how many megabytes for memory
      final datapath = inst.child("courses/$coursepath");
      

        return Scaffold(
        backgroundColor: Colors.white,
        body:  
        Stack(
          children: [
             Container(
                padding: const EdgeInsets.only(top: 50,left: 30,bottom: 50),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/google.png"),fit: BoxFit.cover
                    )
                    ),
                height: MediaQuery. of(context). size. height /3.2,
                width: double.infinity,
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children:  [
                     InkWell(onTap: () {
                       Navigator.pop(context);
                     },
                      child: const Icon(Icons.arrow_back_rounded)),
                    Flexible(flex: 3,child: Container()),
                      Text(coursepath,style: const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
    
                  ],
                ),
              ),
              Container(
                padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /2.7,left: MediaQuery. of(context). size. width /13.2),
                child:  Text("Select a Chapter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),),
              ),
            Container(
              padding:  EdgeInsets.only(top: MediaQuery. of(context). size. height /2.4),
              child: ListView.builder(
                itemCount: chapname.length,
                padding: const EdgeInsets.only(top: 0),
                itemBuilder: (BuildContext context ,int index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                  child:  Card(
                    elevation: 0.5,
            
                    color: Colors.white,
                    child: InkWell(
                      
                      onTap: () async {
                        try {
                          final datapathdetail = await storage(datapath);
                        final Uint8List? pdfdata = await datapathdetail.items[index].getData(databytes);  //getting the data for pdf as bits
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>  PDFview(pdfdatabits: pdfdata), //passing pdfdata to pdfview page
                          ),
                      );
                        } catch (e) {
                          
                        }
                        
                      
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                        height: 70,
                        width: 40,
                        color: Colors.white,
                         
                         
                         
                        child: Row(
                          children: [
                              Text(chapname[index].name.substring(0,chapname[index].name.length - 4),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic
                              ),
                              ),
                            Flexible(flex: 3,child: Container()),
                          
                          ],
                        ),
                      ),
                    )
                   
                  )
            
                  )
                ),
            ),
          ],
        ),
        
      );
  
    
  }
}
   Future<ListResult> storage(final _datapath)async {         
         ListResult listchapter = await _datapath.listAll();
         return listchapter;      
   }