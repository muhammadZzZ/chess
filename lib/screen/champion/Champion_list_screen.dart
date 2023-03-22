import 'package:echessapp/Utils/constrant.dart';
import 'package:echessapp/Widgets/repeated_widgets.dart';
import 'package:echessapp/screen/champion/Champion_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../models/Champion_list.dart';

class ChampionScreen extends StatelessWidget {
  const ChampionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            padding: EdgeInsets.only(bottom: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                   height: gHeight,
                    child: ListView.builder(
                      cacheExtent: 500,
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                     itemCount: WorldChampionList.length,
                     itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(()=> DetailChampion(
                            title: WorldChampionList[index].nameChampion,
                            image: WorldChampionList[index].images![1],
                            wct: WorldChampionList[index].wct,
                            description: WorldChampionList[index].decription,
                            text1: WorldChampionList[index].text1,
                            text2: WorldChampionList[index].text2,
                            link: WorldChampionList[index].link,
                            ));
                        },
                        child: Container(
                          height: gHeight*.13,
                          //margin: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 15,right: 15,bottom: 20),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            elevation: 15,
                            //color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Space(spaceW: 5,),
                                    Center(
                                      child: CircleAvatar(
                                        radius: 40,
                                        backgroundColor: PrimaryColor.withOpacity(.7),
                                        child: CircleAvatar(
                                          radius: 35,
                                          //margin: EdgeInsets.all(16),
                                         backgroundImage:AssetImage(WorldChampionList[index].images![0],),
                                                          ),
                                      ),
                                    ),
                                    Space(spaceW: 15,),
                                    Text(
                                      WorldChampionList[index].nameChampion,
                                      style: TextStyle(
                                        color: PrimaryColor,
                                        fontSize: 16
                                      ),
                                      ),
                                      Space(spaceW: 30,),
                                  ],
                                ),
                                IconButton(
                                  color: Colors.grey,
                                    onPressed: () {
                                      Get.to(()=> DetailChampion(
                                        title: WorldChampionList[index].nameChampion,
                                        image: WorldChampionList[index].images![1],
                                        wct: WorldChampionList[index].wct,
                                        description: WorldChampionList[index].decription,
                                        text1: WorldChampionList[index].text1,
                                        text2: WorldChampionList[index].text2,
                                        link: WorldChampionList[index].link,
                                        ));
                                    }, 
                                    icon: Icon(iskurdish == true ? LineAwesomeIcons.arrow_left :LineAwesomeIcons.arrow_right,))
                              ],
                            ),
                        ),
                        ),
                      );
                     },
                     ),
                  ),
                  
                ],
              ),
            ),
          ),
      ),
    );
  }
}

List<WorldChampion> WorldChampionList =[
  //Magnus Carlsen
  WorldChampion(
    nameChampion: "MnameChampion".tr,
    decription: "Mdecription".tr,
    text1: "Mtext1".tr,
    text2: "Mtext2".tr,
    wct: "Mwct".tr,
    images: ["assets/images/champion/carlsen1m.png","assets/images/finalEdite/carlsenfinal.png","assets/images/homePageImages/carlsen1.jpeg"],
    link: "L2cbT3elGl8",
  ),
  
  //Hikaru Nakamura
  WorldChampion(
    nameChampion:"HIKnameChampion".tr,
    decription:"HIKdecription".tr,
    text1:"HIKtext1".tr,
    text2:"HIKtext2".tr,
    wct:"HIKwct".tr,
    images: ["assets/images/champion/Hikaru1m.png","assets/images/finalEdite/Hikarufinal.png","assets/images/homePageImages/Hikaru1t.jpg"],
    link: "https://youtu.be/L2cbT3elGl8",
  ),
  //Wilhelm Steinitz
  WorldChampion(
    nameChampion:"WILnameChampion".tr,
    decription:"WILdecription".tr,
    text1:"WILtext1".tr,
    text2:"WILtext2".tr,
    wct : "WILwct".tr,
    images: ["assets/images/champion/Wilhelm1m.png","assets/images/finalEdite/Wilhelmfinal.png","assets/images/homePageImages/Wilhelm1.jpeg"],
    link: "L2cbT3elGl8",
  ),

  //Vladimir Kramnik
  WorldChampion(
    nameChampion:"VLAnameChampion".tr,
    decription:"VLAdecription".tr,
    text1:"VLAtext1".tr,
    text2:"VLAtext2".tr,
    wct:"VLAwct".tr,
    images: ["assets/images/champion/Vladimir1m.png","assets/images/finalEdite/Vladimirfinal.png","assets/images/homePageImages/Vladimir1.jpg"],
    link: "L2cbT3elGl8",
  ),

  //Emanuel Lasker
  WorldChampion(
    nameChampion:"EMMnameChampion".tr,
    decription:"EMMdecription".tr,
    text1:"EMMtext1".tr,
    text2:"EMMtext2".tr,
    wct:"EMMwct".tr,
    images: ["assets/images/champion/Emanuel1m.png","assets/images/finalEdite/Emanuelfinal.png","assets/images/homePageImages/Emanuel1.jpg"],
    link: "L2cbT3elGl8",
  ),

  //Bobby Fischer
  WorldChampion(
    nameChampion:"BOBnameChampion".tr,
    decription:"BOBdecription".tr,
    text1:"BOBtext1".tr,
    text2:"BOBtext2".tr,
    wct:"BOBwct".tr,
    images: ["assets/images/champion/Bobby1m.png","assets/images/finalEdite/Bobbyfinal.jpg","assets/images/homePageImages/Bobby1.jpg"],
    link: "L2cbT3elGl8",
  ),

  //Boris Spassky
  WorldChampion(
    nameChampion:"BORInameChampion".tr,
    decription:"BORIdecription".tr,
    text1:"BORItext1".tr,
    text2:"BORItext2".tr,
    wct:"BORIwct".tr,
    images: ["assets/images/champion/Boris1m.png","assets/images/finalEdite/Borisfinal.png","assets/images/homePageImages/Boris1.jpg"],
    link: "L2cbT3elGl8",
  ),
  //Tigran Petrosian
  WorldChampion(
    nameChampion:"TRInameChampion".tr,
    decription:"TRIdecription".tr,
    text1:"TRItext1".tr,
    text2:"TRItext2".tr,
    wct:"TRIwct".tr,
    images: ["assets/images/champion/Tigran1m.png","assets/images/finalEdite/Tigranfinal.png","assets/images/homePageImages/Tigran1.jpg"],//C:\dev\chess\assets\images\champion\Tigran1.jpg
    link: "L2cbT3elGl8",
  ),

//Viswanathan Anand
  WorldChampion(
    nameChampion:"VISnameChampion".tr,
    decription:"VISdecription".tr,
    text1:"VIStext1".tr,
    text2:"VIStext2".tr,
    wct:"VISwct".tr,
    images: ["assets/images/champion/Viswanathan1m.png","assets/images/finalEdite/Viswanathanfinal.png","assets/images/homePageImages/Viswanathan1t.jpg"],
    link: "https://youtu.be/L2cbT3elGl8",
  ),
  
    //Viswanathan Anand
  WorldChampion(
    nameChampion:"Viswanathan Anand",
    decription:"Viswanathan Anand, also known as Vishy Anand, is a former Indian chess player who is considered to be one of the greatest chess players of all time. He was born on December 11, 1969, in Chennai, India",
    text1:"Nakamura has not won the World Chess Championship, which is the most prestigious title in chess. However, he has won many other titles and honors, including five United States Chess Championships and a gold medal in the 2015 World Team Chess Championship. He has also represented the United States in multiple Chess Olympiads, helping the team to win gold medals in 2016 and 2020.",
    text2:"Nakamura is known for his aggressive and dynamic style of play, and he is considered one of the best blitz and bullet chess players in the world. He has also become a popular figure in the chess community, known for his online streaming and commentary of top-level chess events.",
    wct:"In summary, Hikaru Nakamura has not become the World Chess Champion, but he is a highly accomplished chess player who has won many other prestigious titles and honors throughout his career.",
    images: ["assets/images/champion/Viswanathan1m.png","assets/images/finalEdite/Viswanathanfinal.png",],
    link: "https://youtu.be/L2cbT3elGl8",
  ),
];
//  ElevatedButton(onPressed: (){
//               debugPrint("${WorldChampionList.length}");
//             }, child: Text("hello"))