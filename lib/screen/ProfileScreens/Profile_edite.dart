

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/screen/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../Utils/constrant.dart';
import '../../Widgets/repeated_widgets.dart';
import 'Profile_Screen.dart';

class ProfileEdite extends StatefulWidget {
   ProfileEdite({super.key});

  @override
  State<ProfileEdite> createState() => _ProfileEditeState();
}

class _ProfileEditeState extends State<ProfileEdite> {

   var PickedFile;
  late File imagefile;
  String imageurl = "";
  final picker =ImagePicker(); 
  bool isgranted = false;

  late final TextEditingController _username;
  late final TextEditingController _city;
  late final TextEditingController _sex;

  final  currentuser = FirebaseAuth.instance.currentUser!;
  final store = FirebaseStorage.instance.ref();
  final FirebaseFirestore firestoreinit = authentications().ffstore;

  String username="User name";
  String city="City";
  String sex="Gender";
@override
  void initState() {
    _username = TextEditingController();
    _city = TextEditingController();
    _sex = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
   _username.dispose();
   _city.dispose();
   _sex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            height: gHeight*.1,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  splashRadius: 20,splashColor: PrimaryColor.withOpacity(.5),
                  onPressed: ()=> Get..off(()=> ProfilePage()),
                  icon: Icon(
                    LineAwesomeIcons.arrow_left
                  ),
              ),
              Space(spaceW: 70,),
              Text(
                "Edite Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
                )
             ],
          ),
          ),
          Container(
            //TODO:Creating Profile Screen
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                //TODO:create a profile circle
                Stack(
                  children: [
                    Container(
                      height: 135,
                      width: 135,
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 90,
                        backgroundImage: PickedFile != null ? FileImage(
                              File(PickedFile.path)
                        ) : null
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        //TODO: update the profile iamge 
                        onTap: () async{
                             PickedFile =await picker.pickImage(source: ImageSource.gallery); //TODO: pick image from storage
                            setState(() {
                              PickedFile = PickedFile;
                            });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child:  Icon(
                            LineAwesomeIcons.camera,
                            color: Theme.of(context).hintColor,
                            size: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                  ),
                  Space(spaceH: 50),
                  //TODO:create a textfield
                  Form(
                    child: Column(
                      children: [
                     TextFormField(
                      keyboardType: TextInputType.name,
                        controller: _username,
                        decoration: InputDecoration(
                          label: const Text("User name"), 
                          prefixIcon: Icon((LineAwesomeIcons.user),color: PrimaryColor,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                       ),// TextFornField
                      Space(spaceH: 25,),
                     TextFormField(
                      keyboardType: TextInputType.name,
                        controller: _city,
                        decoration: InputDecoration(
                          label: Text("City"), 
                          prefixIcon: Icon(LineAwesomeIcons.city,color: PrimaryColor,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                      ) ,// TextFormField
                      Space(spaceH: 25,),
                     TextFormField(
                      keyboardType: TextInputType.name,
                        controller: _sex,
                        decoration: InputDecoration(
                          label: const Text("Gender"), 
                          prefixIcon: Icon(LineAwesomeIcons.venus_mars,color: PrimaryColor,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                          // TextFormField
                     ),
                      ],
                    ),
                  ),
                  Space(spaceH: 50,),
                  //WTODO: Update button
                  SizedBox(
                    width: gWidth*.6,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PrimaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()
                      ),
                      onPressed: () async{
                        _username.text != "" ?
                        username = _username.text : username = usersinfo["username"];
                        _city.text != "" ?
                        city = _city.text: city = usersinfo["city"];
                        _sex.text != "" ?
                        sex = _sex.text:sex = usersinfo["gender"];


                           try {
                              if(PickedFile != null){ //TODO: upload image to firestore storage and get the url for it
                            setState(() {
                              imagefile=File(PickedFile.path);
                            });
                             var imageupload = await store.child('userimages/${PickedFile.name}')
                                 .putFile(imagefile); //TODO: put a file to userimage folder in firestore storage
                                 
                             var downloadUrl = await imageupload.ref.getDownloadURL(); //TODO: download the url
                                 setState(() {
                                   imageurl = downloadUrl;
                                   });
                          }else {
                          imageurl = usersinfo["pictureurl"];
                        }
                           } catch (e) {
                             
                           }
                       
                      
                        try {
                          await firestoreinit.collection('users').doc(currentuser.uid).update({ //TODO:update user data
                                'username':username,
                                'city': city,
                                'gender':sex,
                                'pictureurl':imageurl
                });
                        await firestoreinit.collection('users').doc(currentuser.uid).get().then((value) { //TODO: get user data
                          usersinfo = value.data()!;
                          return ;
                        });
                        } catch (e) {
                          
                        }
                        
                        
                       
                        Get..off(()=> ProfilePage()); //push replacement
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
         ],
        ),
      ),
    );
  }
}
