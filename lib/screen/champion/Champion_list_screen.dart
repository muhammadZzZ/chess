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
    return Container(
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
                                icon: Icon(LineAwesomeIcons.arrow_right))
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
      );
  }
}

List<WorldChampion> WorldChampionList =[
  //Magnus Carlsen
  WorldChampion(
    nameChampion: "Magnus Carlsen",
    decription: "Magnus Carlsen is a Norwegian chess Grandmaster who is widely considered one of the greatest chess players of all time. He was born on November 30, 1990, in Tønsberg, Norway.",
    text1: "Carlsen first gained international attention in 2004, when he became the youngest player to be awarded the title of Grandmaster at the age of 13 years, 4 months, and 27 days. Since then, he has won numerous prestigious chess tournaments and set multiple records, including the highest chess rating in history in 2014.",
    text2: "Carlsen has also been the World Chess Champion since 2013, when he defeated the reigning champion Viswanathan Anand of India. He has defended his title successfully in several subsequent championship matches, and as of my knowledge cutoff in September 2021, he was still the reigning World Chess Champion.",
    wct: "In total, Magnus Carlsen has won the World Chess Championship five times, including in 2013, 2014, 2016, 2018, and 2021.",
    images: ["assets/images/champion/carlsen1m.png","assets/images/finalEdite/carlsenfinal.png","assets/images/homePageImages/carlsen1.jpeg"],
    link: "L2cbT3elGl8",
  ),

  //Wilhelm Steinitz
  WorldChampion(
    nameChampion:"Wilhelm Steinitz",
    decription:"Wilhelm Steinitz was an Austrian and later American chess player who is widely considered to be the first official World Chess Champion. He was born on May 17, 1836, in Prague, which was then part of the Austrian Empire.",
    text1:"Steinitz was a dominant force in chess during the late 19th century, and he is considered to be one of the most influential chess players of all time. He is often credited with developing many of the foundational principles of modern chess strategy and tactics, and he is known for his emphasis on positional play and the importance of controlling the center of the board.",
    text2:"Steinitz won the first recognized World Chess Championship in 1886, when he defeated the reigning champion Johannes Zukertort in a match held in the United States. He successfully defended his title in subsequent championship matches against various challengers, including Isidor Gunsberg and Mikhail Chigorin.",
    wct : "In total, Wilhelm Steinitz held the World Chess Championship title for nine years, from 1886 to 1894, when he was defeated by Emanuel Lasker in a championship match. He never regained the title, but he continued to be an active and influential figure in the world of chess until his death in 1900",
    images: ["assets/images/champion/Wilhelm1m.png","assets/images/finalEdite/Wilhelmfinal.png","assets/images/homePageImages/Wilhelm1.jpeg"],
    link: "L2cbT3elGl8",
  ),

  //Vladimir Kramnik
  WorldChampion(
    nameChampion:"Vladimir Kramnik",
    decription:"Vladimir Kramnik is a retired Russian chess player who is considered to be one of the greatest players of his generation. He was born on June 25, 1975, in Tuapse, Russia.",
    text1:"Kramnik became the Classical World Chess Champion in 2000, when he defeated Garry Kasparov in a championship match held in London. He successfully defended his title in a rematch against Kasparov the following year, and he held the title until 2006, when he was defeated by Veselin Topalov in a championship match.In addition to his Classical World Chess Championship titles, Kramnik also won the FIDE World Chess Championship in 2007, which was a tournament-style championship rather than a match.",
    text2:"Kramnik first gained international attention in 1992, when he won the World Junior Chess Championship. He went on to become one of the top players in the world, and he was known for his deep strategic understanding and his ability to play multiple styles of chess.",
    wct:"In total, Vladimir Kramnik won the World Chess Championship twice, both in 2000 and 2006.",
    images: ["assets/images/champion/Vladimir1m.png","assets/images/finalEdite/Vladimirfinal.png","assets/images/homePageImages/Vladimir1.jpg"],
    link: "L2cbT3elGl8",
  ),

  //Emanuel Lasker
  WorldChampion(
    nameChampion:"Emanuel Lasker",
    decription:"Emanuel Lasker was a German chess player who is widely considered to be one of the greatest chess players of all time. He was born on December 24, 1868, in Berlinchen, which is now part of Poland.",
    text1:"Lasker was a dominant force in chess during the late 19th and early 20th centuries. He was known for his deep strategic understanding of the game, as well as his ability to play both aggressively and defensively depending on the situation.",
    text2:"Lasker became the second official World Chess Champion in 1894, when he defeated Wilhelm Steinitz in a championship match held in New York City. He successfully defended his title against several challengers, including Frank Marshall, David Janowski, and Carl Schlechter.Lasker held the World Chess Championship title for 27 years, which is the longest reign of any World Chess Champion in history. He lost the title in 1921, when he was defeated by Jose Capablanca in a championship match held in Havana, Cuba.",
    wct:"In total, Emanuel Lasker held the World Chess Championship title for two separate periods of time, from 1894 to 1921. He remains one of the most influential and celebrated figures in the history of chess.",
    images: ["assets/images/champion/Emanuel1m.png","assets/images/finalEdite/Emanuelfinal.png","assets/images/homePageImages/Emanuel1.jpg"],
    link: "L2cbT3elGl8",
  ),

  //Bobby Fischer
  WorldChampion(
    nameChampion:"Bobby Fischer",
    decription:"Bobby Fischer was an American chess player who is widely regarded as one of the greatest chess players of all time. He was born on March 9, 1943, in Chicago, Illinois, and he died on January 17, 2008, in Reykjavik, Iceland.",
    text1:"Fischer was a child prodigy who became the youngest player to win the United States Championship in 1957 at the age of 14. He went on to win the championship a total of eight times, and he also won numerous other prestigious tournaments throughout his career.",
    text2:"Fischer became the World Chess Champion in 1972, when he defeated Boris Spassky in a championship match held in Reykjavik, Iceland. The match was highly publicized and was seen as a symbol of the Cold War tensions between the United States and the Soviet Union.Fischer's victory made him the first American to win the World Chess Championship, and he became an instant celebrity. However, he soon became embroiled in a series of controversies, including a dispute with the World Chess Federation over the rules for his title defense, and he became increasingly reclusive and eccentric in his later years.",
    wct:"In total, Bobby Fischer became the World Chess Champion only once, in 1972, when he defeated Boris Spassky. However, his impact on the game of chess and his enduring legacy as one of the greatest players of all time are widely recognized.",
    images: ["assets/images/champion/Bobby1m.png","assets/images/finalEdite/Bobbyfinal.jpg","assets/images/homePageImages/Bobby1.jpg"],
    link: "L2cbT3elGl8",
  ),

  //Boris Spassky
  WorldChampion(
    nameChampion:"Boris Spassky",
    decription:"Boris Spassky is a retired Russian-French chess grandmaster who was born on January 30, 1937, in Leningrad, Soviet Union (now Saint Petersburg, Russia).",
    text1:"Spassky is best known for his match against American chess player Bobby Fischer in 1972, which was dubbed the 'Match of the Century' and was seen as a symbol of the Cold War tensions between the United States and the Soviet Union. Spassky was the reigning World Chess Champion at the time, having won the title in 1969 by defeating Tigran Petrosian in a championship match held in Moscow.",
    text2:"In the 1972 championship match against Fischer, Spassky lost the title after a closely contested series of games held in Reykjavik, Iceland. Despite the loss, Spassky remained one of the top chess players in the world for many years, and he won numerous other prestigious tournaments throughout his career. In addition to his success as a chess player, Spassky was also known for his charm and sense of humor, and he was a popular figure both in the Soviet Union and around the world.",
    wct:"In total, Boris Spassky became the World Chess Champion only once, in 1969, when he defeated Tigran Petrosian.",
    images: ["assets/images/champion/Boris1m.png","assets/images/finalEdite/Borisfinal.png","assets/images/homePageImages/Boris1.jpg"],
    link: "L2cbT3elGl8",
  ),

  WorldChampion(
    nameChampion:"Tigran Petrosian",
    decription:"Tigran Petrosian was a Soviet Armenian chess grandmaster who was born on June 17, 1929, in Tiflis, Soviet Union (now Tbilisi, Georgia), and who died on August 13, 1984, in Moscow, Soviet Union (now Russia).",
    text1:"Petrosian was a highly defensive player who was known for his ability to neutralize his opponents' attacks and create counter-attacks of his own. He won the Soviet Chess Championship four times and the World Chess Championship once.",
    text2:"Petrosian became the World Chess Champion in 1963, when he defeated Mikhail Botvinnik in a championship match held in Moscow. He successfully defended the title against Boris Spassky in 1966, but he lost it to Spassky in a rematch in 1969.After losing the title, Petrosian remained a top player for many years, and he continued to compete at the highest level until his death in 1984.",
    wct:"In total, Tigran Petrosian became the World Chess Champion only once, in 1963, when he defeated Mikhail Botvinnik. However, his impact on the game of chess and his status as one of the greatest defensive players of all time are widely recognized.",
    images: ["assets/images/champion/Tigran1m.png","assets/images/finalEdite/Tigranfinal.png","assets/images/homePageImages/Tigran1.jpg"],//C:\dev\chess\assets\images\champion\Tigran1.jpg
    link: "L2cbT3elGl8",
  ),

//Tigran Petrosian
  WorldChampion(
    nameChampion:"Viswanathan Anand",
    decription:"Viswanathan Anand, also known as Vishy Anand, is a former Indian chess player who is considered to be one of the greatest chess players of all time. He was born on December 11, 1969, in Chennai, India",
    text1:"Anand first gained international attention in the late 1980s and early 1990s, when he won several prestigious chess tournaments. He became India's first Grandmaster in 1988, and he was known for his aggressive and imaginative style of play.",
    text2:"Anand became the FIDE World Chess Champion for the first time in 2000, when he defeated Alexei Shirov in a championship match held in Tehran. He successfully defended his title against various challengers, including Veselin Topalov, Boris Gelfand, and Vladimir Kramnik.Anand also won the World Chess Championship in 2007, 2008, and 2010, and he held the title until 2013, when he was defeated by Magnus Carlsen in a championship match held in Chennai.",
    wct:"In total, Viswanathan Anand won the World Chess Championship five times, in 2000, 2007, 2008, 2010, and 2012.",
    images: ["assets/images/champion/Viswanathan1m.png","assets/images/finalEdite/Viswanathanfinal.png","assets/images/homePageImages/Viswanathan1t.jpg"],
    link: "https://youtu.be/L2cbT3elGl8",
  ),
    //Hikaru Nakamura
  WorldChampion(
    nameChampion:"Hikaru Nakamura",
    decription:"Hikaru Nakamura is an American chess grandmaster who was born on December 9, 1987, in Hirakata, Japan. He is one of the top-ranked chess players in the world and has won numerous prestigious tournaments throughout his career.",
    text1:"Anand first gained international attention in the late 1980s and early 1990s, when he won several prestigious chess tournaments. He became India's first Grandmaster in 1988, and he was known for his aggressive and imaginative style of play.",
    text2:"Anand became the FIDE World Chess Champion for the first time in 2000, when he defeated Alexei Shirov in a championship match held in Tehran. He successfully defended his title against various challengers, including Veselin Topalov, Boris Gelfand, and Vladimir Kramnik.Anand also won the World Chess Championship in 2007, 2008, and 2010, and he held the title until 2013, when he was defeated by Magnus Carlsen in a championship match held in Chennai.",
    wct:"In total, Viswanathan Anand won the World Chess Championship five times, in 2000, 2007, 2008, 2010, and 2012.",
    images: ["assets/images/champion/Hikaru1m.png","assets/images/finalEdite/Hikarufinal.png","assets/images/homePageImages/Hikaru1t.jpg"],
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