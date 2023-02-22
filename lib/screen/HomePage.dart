import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'authentication.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   final  cu = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
  
   
    
    return  Scaffold(
     
      appBar: AppBar(backgroundColor: Colors.white,
      shadowColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
        ), 
        
        drawer:  Drawer(
          
          child:  ListView(
            padding: EdgeInsets.zero,
                children:  [
                  UserAccountsDrawerHeader(
                    accountName:  Text(cu.displayName!),
                    accountEmail: Text(cu.email!),
                    currentAccountPicture: CircleAvatar(
                        child: ClipOval(
                          child: Image.network(cu.photoURL!,fit: BoxFit.cover,width: 90,height: 90,),
                          
                        ),
                    ),
                    
                    )
                  
                ],
            
          ),
        ),
      body: const Center(),

    );
  }
}

class Place {
  Place([this.title = '', this.description = '', this.image='',     this.value=0.0]);
  String title;
  String description;
  String image;
  double value;
}