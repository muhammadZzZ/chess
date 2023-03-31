
// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/Firebase/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
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
            padding:const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  splashRadius: 20,splashColor: PrimaryColor.withOpacity(.5),
                  onPressed: ()=> Get..off(()=>const ProfilePage()),
                  icon: Icon(
                    iskurdish == true ? LineAwesomeIcons.arrow_right :LineAwesomeIcons.arrow_left,
                    color: isdarkmode ? Colors.white:Colors.black ,
                  ),
              ),
              Space(spaceW: 70,),
              Text(
                "EditProfle".tr,
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
                )
             ],
          ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            //CREATING PROFILE SCREEN
            child: SingleChildScrollView(
              padding:const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                //CREATE A PROFILE CIRCLE
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
                        //PDATE THE PROFILE IMAGE
                        onTap: () async{
                             PickedFile =await picker.pickImage(source: ImageSource.gallery);
                             //PICK IMAGE FROM STORAGE
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
                  //CREATE A TEXTFIELD
                  Form(
                    child: Column(
                      children: [
                     TextFormField(
                      keyboardType: TextInputType.name,
                        controller: _username,
                        decoration: InputDecoration(
                          label: Text("userName".tr), 
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
                          label: Text("city".tr), 
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
                          label: Text("sex".tr), 
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
                  //UPDATE PROFLE BUTTON
                  SizedBox(
                    width: gWidth*.6,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PrimaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()
                      ),
                      onPressed: () {
                        
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.confirm,
                          text: 'checkingForUpdate'.tr,
                          title: 'sure'.tr,
                          confirmBtnText: 'y'.tr,
                          cancelBtnText: 'n'.tr,
                          onConfirmBtnTap: () async {

                            //CHECK IF THE TEXTFIELD HAS TEXT IN IT
                            //START
                            _username.text != "" ?
                            username = _username.text : username = usersinfo["username"];
                            _city.text != "" ?
                            city = _city.text: city = usersinfo["city"];
                            _sex.text != "" ?
                            sex = _sex.text:sex = usersinfo["gender"];
                            //END

                              
                              try {
                                  if(PickedFile != null){ 
                                    //UPLOAD IMAGE TO FIREBASE STRORAGE AND GET THE URL FOR IT
                                    setState(() {
                                      imagefile=File(PickedFile.path);
                                    });
                                    //PUT A FILE TO USERNAME FOLDER IN FIREBASE STORAGE
                                    var imageupload = await store.child('userimages/${PickedFile.name}').putFile(imagefile);
                                    //DOWNLOAD THE URL
                                    var downloadUrl = await imageupload.ref.getDownloadURL();
                                    setState(() {
                                      imageurl = downloadUrl;
                                    });
                                  }else {
                                      imageurl = usersinfo["pictureurl"];
                                  }
                                } catch (e) {
                                    QuickAlert.show(
                                      context: context,
                                      type: QuickAlertType.error,
                                      title: 'error'.tr,
                                      text: "picUploadError".tr,
                                      confirmBtnColor: Colors.white,
                                      confirmBtnTextStyle: TextStyle(color:DialogColor[2]),
                                    );
          
                                }
                       
                      
                                try {
                                  //UPDATE USER DATA
                                    await firestoreinit.collection('users').doc(currentuser.uid).update({
                                      'username':username,
                                      'city': city,
                                      'gender':sex,
                                      'pictureurl':imageurl
                                    });
                                    //GET USER DATA
                                await firestoreinit.collection('users').doc(currentuser.uid).get().then((value) {
                                    usersinfo = value.data()!;
                                 return ;
                                });
                                final conv = json.encode(usersinfo);
                                  await fssinst.write(key: "userdata", value: conv);
                                  } catch (e) {
                                      QuickAlert.show(
                                      context: context,
                                      type: QuickAlertType.error,
                                      title: 'Oops..',
                                      text: "getUpdatedDataError".tr,
                                      confirmBtnColor: Colors.white,
                                      confirmBtnTextStyle: TextStyle(color:DialogColor[2]),
                                    );
                                  }
                                   Get..off(()=> ProfilePage()); //push replacement
                          },
                          confirmBtnColor: DialogColor[3],
                          );                       
                      },
                      child: Text(
                        "update".tr,
                        style:const TextStyle(
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
