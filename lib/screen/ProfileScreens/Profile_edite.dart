import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../Utils/constrant.dart';
import '../../Widgets/repeated_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileEdite extends StatelessWidget {
   ProfileEdite({super.key});

  TextEditingController _username= TextEditingController();
  TextEditingController _email= TextEditingController();
  TextEditingController _city= TextEditingController();
  TextEditingController _sex= TextEditingController();
  String username="User name";
  String email="Email";
  String City="City";
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
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                //TODO:create a profile circle
                Stack(
                  children: [
                    Container(
                      height: 135,
                      width: 135,
                      alignment: Alignment.topCenter,
                      child: const CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage(
                          'assets/images/pro.jpeg',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        //Navigate to the edite profile screen 
                        onTap: () => Get..to(()=> ProfileEdite()),
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
                        controller: _username,
                        decoration: InputDecoration(
                          label: Text(username), 
                          prefixIcon: Icon((FontAwesomeIcons.user),color: PrimaryColor,),
                          border: OutlineInputBorder(),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                       ),// TextFornField
                      Space(spaceH: 20,),
                     TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                          label: Text(email), 
                          prefixIcon: Icon(FontAwesomeIcons.envelope,color: PrimaryColor,),
                          border: OutlineInputBorder(),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                      ) ,// TextFormField
                      Space(spaceH: 20,),
                     TextFormField(
                        controller: _city,
                        decoration: InputDecoration(
                          label: Text(City), 
                          prefixIcon: Icon(FontAwesomeIcons.locationDot,color: PrimaryColor,),
                          border: OutlineInputBorder(),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                      ) ,// TextFormField
                      Space(spaceH: 20,),
                     TextFormField(
                        controller: _sex,
                        decoration: InputDecoration(
                          label: Text(sex), 
                          prefixIcon: Icon(FontAwesomeIcons.venusMars,color: PrimaryColor,),
                          border: OutlineInputBorder(),
                          floatingLabelStyle: TextStyle(color: PrimaryColor),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: PrimaryColor))
                          ),
                          
                          // TextFormField
                     ),
                      ],
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
