import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../Utils/constrant.dart';

//the sizedBos widgets 
class Space extends StatelessWidget {
  Space({super.key, required this.spaceH,this.spaceW});
  double spaceH;
  double? spaceW;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spaceH,
    );
  }
}


//The Profile Menu listtile 
class ProfileMenuWidgets extends StatelessWidget {
  const ProfileMenuWidgets({
    super.key,
    required this.title,
    required this.icon,
    required this.Onpress,
    this.endIcon = true,
    this.textColor,
    this.IconColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback Onpress;
  final bool endIcon;
  final Color? textColor;
  final Color? IconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: Onpress,
      shape: const StadiumBorder(),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.05),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icon,
          color: IconColor != null ? IconColor : PrimaryColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(.05),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_right,
                color: Colors.grey,
                size: 18,
              ),
            )
          : null,
    );
  }
}