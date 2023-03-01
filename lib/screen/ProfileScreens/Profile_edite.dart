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

  final TextEditingController _username= TextEditingController();
  final TextEditingController _email= TextEditingController();
  final TextEditingController _city= TextEditingController();
  final TextEditingController _sex= TextEditingController();


  String username="User name";
  String email="Email";
  String city="City";
  String sex="Gender";

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
                        backgroundImage: NetworkImage(
                          imagepath,
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
                          label: Text(username), 
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
                          label: Text(email), 
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
                          label: Text(city), 
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
                          label: Text(sex), 
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
                      onPressed: () => Get..to(()=> ProfilePage()),
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
