

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:echessapp/screen/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../Utils/constrant.dart';
import '../../Widgets/repeated_widgets.dart';
import 'Profile_Screen.dart';

class ProfileEdite extends StatefulWidget {
   ProfileEdite({super.key});

  @override
  State<ProfileEdite> createState() => _ProfileEditeState();
}

class _ProfileEditeState extends State<ProfileEdite> {

  String imagepath="";
  final picker =ImagePicker(); 

  late final TextEditingController _username;
  late final TextEditingController _email;
  late final TextEditingController _city;
  late final TextEditingController _sex;

  final  currentuser = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore firestoreinit = authentications().ffstore;

  String username="User name";
  String email="Email";
  String city="City";
  String sex="Gender";
@override
  void initState() {
    _username = TextEditingController();
    _email = TextEditingController();
    _city = TextEditingController();
    _sex = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
   _username.dispose();
   _email.dispose();
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
                  onPressed: ()=> Get..back(),
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
                        backgroundImage: AssetImage(
                          "assets/images/pro.jprg",
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        //TODO: update the profile iamge 
                        onTap: () async{
                          final PickedFile =await picker.pickImage(source: ImageSource.gallery);
                          if(PickedFile != null){
                            setState(() {
                              imagepath=PickedFile.path;
                            });
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            LineAwesomeIcons.camera,
                            color: Colors.black,
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
                      keyboardType: TextInputType.emailAddress,
                        controller: _email,
                        decoration: InputDecoration(
                          label: const Text("Email"), 
                          prefixIcon: Icon(LineAwesomeIcons.envelope,color: PrimaryColor,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                      ) ,// TextFormField
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
                        
                        username = _username.text;
                        email = _email.text;
                        city = _city.text;
                        sex = _sex.text;
                      
                        await firestoreinit.collection('users').doc(currentuser.uid).update({
                                'username':username,
                                'email':email,
                                'city': city,
                                'gender':sex
                });
                        await firestoreinit.collection('users').doc(currentuser.uid).get().then((value) {
                          usersinfo = value.data()!;
                          return ;
                        });
                        
                       
                        Get..off(()=> ProfilePage());
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
