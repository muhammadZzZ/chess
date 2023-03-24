import 'package:get/get_navigation/src/root/internacionalization.dart';

class lang extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      //TITLE PAGES NAME
      //START
      'titleofhome':'Home',
      'titleofcourse':'Course',
      'titleofchamp':'Champions',
      'titleofpuzzle':'Puzzle',
      //ENDS

      //HOME PAGE TEXTS
      //START
      'seeMore':'See more',
      'BeginLearning':'Begin Learning',
      'StartLear':'Start Learning the courses',
      //ENDS

      //PROFILE SCREEN 
      //START
      'ProfileTitle':'Profile',
      'EditPro':'Edit Profile',
      'theme':'Change Theme',
      'lan':'Change Language',
      'logout':'Logout',
      'EditProfle':'Edit Profile',
      'userName':'User name',
      'city':'City',
      'sex':'Gender',
      //ENDS

      //CHAMPION SCREEN
      //START
      'WhoIs':'Who is ',
      'HowManyTime':'How many times',
      'wonWorldChess':'won the world chess champion ?',
      //ENDS

      //PUZZLE SCREEN
      //START
      'Hint':'Hint',
      'FindBestMove':'Find the best move for',
      'white':'White',
      'black':'Black',
      'okay':'Okay',
      'wrong':'Wrong',
      'tryAgain':'Try Again ',
      'success':'Success',
      'wellDone':'Well Done',
      'error':'Error',
      'picUploadError':"picture couldn't upload, please try again...",
      'getUpdatedDataError':"something happened! please try again...",
      'update':'Update',
      'checkingForUpdate':'Do you want to change your information ?',
      'y':'Yes',
      'n':'No',
      //ENDS

      //LOGIN PAGE
      //START
      'wel':'Welcome',
      'sign':'Choose Sign in method',
      'fb':'Facebook',
      'google':'Google',
      //END

      //CHAMPION LIST DATA 
      //START
      //Maguns Carlsen Data
      'MnameChampion':'Magnus Carlsen',
      'Mdecription':'Magnus Carlsen is a Norwegian chess Grandmaster who is widely considered one of the greatest chess players of all time. He was born on November 30, 1990, in Tønsberg, Norway.',
      'Mtext1':'Carlsen first gained international attention in 2004, when he became the youngest player to be awarded the title of Grandmaster at the age of 13 years, 4 months, and 27 days. Since then, he has won numerous prestigious chess tournaments and set multiple records, including the highest chess rating in history in 2014.',
      'Mtext2':'Carlsen has also been the World Chess Champion since 2013, when he defeated the reigning champion Viswanathan Anand of India. He has defended his title successfully in several subsequent championship matches, and as of my knowledge cutoff in September 2021, he was still the reigning World Chess Champion.',
      'Mwct':'In total, Magnus Carlsen has won the World Chess Championship five times, including in 2013, 2014, 2016, 2018, and 2021.',
      //Wilhelm Steinitz Data
      'WILnameChampion':'Viswanathan Anand',
      'WILdecription':'Wilhelm Steinitz was an Austrian and later American chess player who is widely considered to be the first official World Chess Champion. He was born on May 17, 1836, in Prague, which was then part of the Austrian Empire.',
      'WILtext1':'Steinitz was a dominant force in chess during the late 19th century, and he is considered to be one of the most influential chess players of all time. He is often credited with developing many of the foundational principles of modern chess strategy and tactics, and he is known for his emphasis on positional play and the importance of controlling the center of the board.',
      'WILtext2':'Steinitz won the first recognized World Chess Championship in 1886, when he defeated the reigning champion Johannes Zukertort in a match held in the United States. He successfully defended his title in subsequent championship matches against various challengers, including Isidor Gunsberg and Mikhail Chigorin.',
      'WILwct':'In total, Wilhelm Steinitz held the World Chess Championship title for nine years, from 1886 to 1894, when he was defeated by Emanuel Lasker in a championship match. He never regained the title, but he continued to be an active and influential figure in the world of chess until his death in 1900',
      //Vladimir Kramnik Data
      'VLAnameChampion':'Vladimir Kramnik',
      'VLAdecription':'Vladimir Kramnik is a retired Russian chess player who is considered to be one of the greatest players of his generation. He was born on June 25, 1975, in Tuapse, Russia.',
      'VLAtext1':"Kramnik became the Classical World Chess Champion in 2000, when he defeated Garry Kasparov in a championship match held in London. He successfully defended his title in a rematch against Kasparov the following year, and he held the title until 2006, when he was defeated by Veselin Topalov in a championship match.In addition to his Classical World Chess Championship titles, Kramnik also won the FIDE World Chess Championship in 2007, which was a tournament-style championship rather than a match.",
      'VLAtext2':'Kramnik first gained international attention in 1992, when he won the World Junior Chess Championship. He went on to become one of the top players in the world, and he was known for his deep strategic understanding and his ability to play multiple styles of chess.',
      'VLAwct':'In total, Vladimir Kramnik won the World Chess Championship twice, both in 2000 and 2006.',
      //Emanuel LaskerData
      'EMMnameChampion':'Emanuel Lasker',
      'EMMdecription':'Emanuel Lasker was a German chess player who is widely considered to be one of the greatest chess players of all time. He was born on December 24, 1868, in Berlinchen, which is now part of Poland.',
      'EMMtext1':"Lasker was a dominant force in chess during the late 19th and early 20th centuries. He was known for his deep strategic understanding of the game, as well as his ability to play both aggressively and defensively depending on the situation.",
      'EMMtext2':"Lasker became the second official World Chess Champion in 1894, when he defeated Wilhelm Steinitz in a championship match held in New York City. He successfully defended his title against several challengers, including Frank Marshall, David Janowski, and Carl Schlechter.Lasker held the World Chess Championship title for 27 years, which is the longest reign of any World Chess Champion in history. He lost the title in 1921, when he was defeated by Jose Capablanca in a championship match held in Havana, Cuba.",
      'EMMwct':'In total, Emanuel Lasker held the World Chess Championship title for two separate periods of time, from 1894 to 1921. He remains one of the most influential and celebrated figures in the history of chess.',
      //Bobby Fischer Data
      'BOBnameChampion':'Bobby Fischer',
      'BOBdecription':'Bobby Fischer was an American chess player who is widely regarded as one of the greatest chess players of all time. He was born on March 9, 1943, in Chicago, Illinois, and he died on January 17, 2008, in Reykjavik, Iceland.',
      'BOBtext1':"Fischer was a child prodigy who became the youngest player to win the United States Championship in 1957 at the age of 14. He went on to win the championship a total of eight times, and he also won numerous other prestigious tournaments throughout his career.",
      'BOBtext2':"Fischer became the World Chess Champion in 1972, when he defeated Boris Spassky in a championship match held in Reykjavik, Iceland. The match was highly publicized and was seen as a symbol of the Cold War tensions between the United States and the Soviet Union.Fischer's victory made him the first American to win the World Chess Championship, and he became an instant celebrity. However, he soon became embroiled in a series of controversies, including a dispute with the World Chess Federation over the rules for his title defense, and he became increasingly reclusive and eccentric in his later years.",
      'BOBwct':'In total, Bobby Fischer became the World Chess Champion only once, in 1972, when he defeated Boris Spassky. However, his impact on the game of chess and his enduring legacy as one of the greatest players of all time are widely recognized.',
      //Boris Spassky Data
      'BORInameChampion':'Boris Spassky',
      'BORIdecription':'Boris Spassky is a retired Russian-French chess grandmaster who was born on January 30, 1937, in Leningrad, Soviet Union (now Saint Petersburg, Russia).',
      'BORItext1':"Spassky is best known for his match against American chess player Bobby Fischer in 1972, which was dubbed the 'Match of the Century' and was seen as a symbol of the Cold War tensions between the United States and the Soviet Union. Spassky was the reigning World Chess Champion at the time, having won the title in 1969 by defeating Tigran Petrosian in a championship match held in Moscow.",
      'BORItext2':"In the 1972 championship match against Fischer, Spassky lost the title after a closely contested series of games held in Reykjavik, Iceland. Despite the loss, Spassky remained one of the top chess players in the world for many years, and he won numerous other prestigious tournaments throughout his career. In addition to his success as a chess player, Spassky was also known for his charm and sense of humor, and he was a popular figure both in the Soviet Union and around the world.",
      'BORIwct':'In total, Boris Spassky became the World Chess Champion only once, in 1969, when he defeated Tigran Petrosian.',
      //Hikaru Nakamura Data
      'HIKnameChampion':'Hikaru Nakamura',
      'HIKdecription':'Hikaru Nakamura is an American chess grandmaster who was born on December 9, 1987, in Hirakata, Japan. He is one of the top-ranked chess players in the world and has won numerous prestigious tournaments throughout his career.',
      'HIKtext1':"Nakamura has not won the World Chess Championship, which is the most prestigious title in chess. However, he has won many other titles and honors, including five United States Chess Championships and a gold medal in the 2015 World Team Chess Championship. He has also represented the United States in multiple Chess Olympiads, helping the team to win gold medals in 2016 and 2020.",
      'HIKtext2':"Nakamura is known for his aggressive and dynamic style of play, and he is considered one of the best blitz and bullet chess players in the world. He has also become a popular figure in the chess community, known for his online streaming and commentary of top-level chess events.",
      'HIKwct':'In summary, Hikaru Nakamura has not become the World Chess Champion, but he is a highly accomplished chess player who has won many other prestigious titles and honors throughout his career.',
      //Viswanathan Anand Data
      'VISnameChampion':'Viswanathan Anand',
      'VISdecription':'Viswanathan Anand, also known as Vishy Anand, is a former Indian chess player who is considered to be one of the greatest chess players of all time. He was born on December 11, 1969, in Chennai, India',
      'VIStext1':"Anand first gained international attention in the late 1980s and early 1990s, when he won several prestigious chess tournaments. He became India's first Grandmaster in 1988, and he was known for his aggressive and imaginative style of play.",
      'VIStext2':"Anand became the FIDE World Chess Champion for the first time in 2000, when he defeated Alexei Shirov in a championship match held in Tehran. He successfully defended his title against various challengers, including Veselin Topalov, Boris Gelfand, and Vladimir Kramnik.Anand also won the World Chess Championship in 2007, 2008, and 2010, and he held the title until 2013, when he was defeated by Magnus Carlsen in a championship match held in Chennai.",
      'VISwct':'In total, Viswanathan Anand won the World Chess Championship five times, in 2000, 2007, 2008, 2010, and 2012.',
      //Tigran Petrosian Data
      'TRInameChampion':'Tigran Petrosian',
      'TRIdecription':'Tigran Petrosian was a Soviet Armenian chess grandmaster who was born on June 17, 1929, in Tiflis, Soviet Union (now Tbilisi, Georgia), and who died on August 13, 1984, in Moscow, Soviet Union (now Russia).',
      'TRItext1':"Petrosian was a highly defensive player who was known for his ability to neutralize his opponents' attacks and create counter-attacks of his own. He won the Soviet Chess Championship four times and the World Chess Championship once.",
      'TRItext2':"Petrosian became the World Chess Champion in 1963, when he defeated Mikhail Botvinnik in a championship match held in Moscow. He successfully defended the title against Boris Spassky in 1966, but he lost it to Spassky in a rematch in 1969.After losing the title, Petrosian remained a top player for many years, and he continued to compete at the highest level until his death in 1984.",
      'TRIwct':'In total, Tigran Petrosian became the World Chess Champion only once, in 1963, when he defeated Mikhail Botvinnik. However, his impact on the game of chess and his status as one of the greatest defensive players of all time are widely recognized.',
      //ENDS

      //PUZZLE HINT TEXT
      //START
      'p1':'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
      'p2':'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
      'p3':'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
      'p4':'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
      'p5':'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
      'p6':"Napoleon's style checkmate. don't you ever lost with this Style, ok your queen and bishop are making a good team here They both aiming at the best square on this board",
      'p7':'Your queen and bishop are making a good team here They both aiming at the weakest square on this board',
      'p8':'Your queen and bishop are making a good team here They both aiming at the weakest square on this board',
      'p9':'Sometimes knights are killer',
      'p10':'Sometimes knights are killer',
      'p11':'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
      'p12':'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
      'p13':'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
      'p14':'Skewer. it means is an attack upon two pieces in a line here even tho black has queen but lose the game because of the skewer',
      'p15':'Skewer. it means is an attack upon two pieces in a line',
      'p16':'Skewer. look two bishops are on the same line and no other piece defend them',
      'p17':'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no knight? ans. Simply we take blacks white squared bishop',
      'p18':'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no knight? ans. Simply we take blacks white squared bishop',
      'p19':'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no knight? ans. Simply we take blacks white squared bishop',
      'p20':'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no knight? ans. Simply we take blacks white squared bishop',
      'p21':'Double Attack. is an attack with one move you attack two or more pieces',
      'p22':'double attack and also knight fork',
      'p23':'There are family forks here in this puzzle it means with one piece you attack many things including the king, queen, rook',
      'p24':'double attack with the bishop',
      'p25':'double attack with the bishop',
      'p26':'In chess one pawn is so important and make difference so here rook can double attack',
      'p27':"this one a little bit tough but it's a very useful position and it happens during games. it is about the double attack with the queen but this time threatening mate and rook",
      'p28':'Double attack and also pawn forks',
      'p29':'Knight forks',
      'p30':'Double attack with rook',
      'p31':'Pin. here whites knight diagonally pinned to queen it means when white move his knight he loses his queen so we have to attack the knight in order to take advantage',
      'p32':'No surprise white will win in only 2 moves thanks for a knight fork',
      'p33':'Double attack with check look at this position whites bishop is undefended and there is an open diagonal to check',
      'p34':'Skewer and double attack with a bishop',
      'p35':'pwan forks',
      'p36':'Skewer and double attack with rook',
      'p37':'Skewer and double attack with bishop',
      'p38':'Use your Queen to eliminate blacks, undefended knight',
      'p39':'Knight forks',
      'p40':'check and win something',
      'p41':'pwan forks',
      'p42':'Queen and the King are on the same diagonal and this is good news for you to take advantage of that pin',
      'p43':'Bishop and the King are on the same file which you can pin the bishop then attack him with pawn',
      'p44':'Queen and the King are on the same file',
      'p45':'Pin knight to rook so you can get that knight',
      'p46':'Pin the knight to the queen so black can not move the knight and then you can take that knight easily',
      'p47':'the knight is already pinned to the rook so we have to attack it',
      'p48':'This one is funny, pin a queen to the king and the knight can not take rook because the knight himself is pinned to the king this puzzle is great to show how strong a pin can be',
      'p49':'Checkmate in one, this one is even more funnier than the previous one because black has two pieces but none of them are alive',
      'p50':'Search for the Knight forks and take advantage of the pinned bishop',
      'p51':'This is also pin but a bit weird because you pin the knight to threatening checkmate',
      'p52':'attack queen and suddenly you will be able to checkmate',
      'p53':"Discover check. a check on the opponent's king that is delivered by moving a piece out of the line ",
      'p54':'your knight is pinned but thanks for the discover check that will save you and you can get a bishop. the first move is with the knight',
      'p55':"Discover check. a check on the opponent's king that is delivered by moving a piece out of the line ",
      'p56':'What will happen if you move your rook? and where you put that rook?',
      'p57':'what happens if you move your king ? and where you put your king?',
      'p58':'Double attack and also discover attack by moving a pawn',
      'p59':"What happens if you don't have a bishop in front of your rook?",
      'p60':'Discover check by moving pawn',
      //ENDS                                                                                                                              
    },
    'fa_IR':{
      //TITLE PAGES NAME
      //START
      'titleofhome':'ماڵەوە',
      'titleofcourse': 'کۆرسەکان',
      'titleofchamp':'پاڵەوانەکان',
      'titleofpuzzle':'مەتەڵەکان',
      //ENDS

      //HOME PAGE TEXTS
      //START
      'seeMore':'بینی زیاتر',
      'BeginLearning':'دەست پێکردن',
      'StartLear':'دەست پێکردنی کۆرسەکان',
      //ENDS

      //PROFILE SCREEN 
      //START
      'ProfileTitle':'پرۆفایڵ',
      'EditPro':'دەستکاریکرنی پرۆفایڵ',
      'theme':'گۆرینی رەنگ',
      'lan':'گۆرینی زمان',
      'logout':'دەرچوون',
      'EditProfle':'دەستکاریکرنی پرۆفایڵ',
      'userName':'ناوی بەکارهێنەر',
      'city':'شار',
      'sex':'رەگەز',
      ''
      //ENDS

      //CHAMPION SCREEN
      //START
      'WhoIs':'کێیە ',
      'HowManyTime':'چەند جار ',
      'wonWorldChess':'پاڵەوانی جیهانی شەترەنجی بەدەستهێنا ؟',
      //ENDS

      //PUZZLE SCREEN
      //START
      'Hint':'یارمەتی',
      'FindBestMove':'باشترین جووڵە بۆ',
      'white':'سپی',
      'black':'ڕەش',
      'okay':'باشە',
      'wrong':'هەڵەیە',
      'tryAgain':'دووبارە هەوڵبدەرەوە',
      'success':'سەرکەوتی',
      'wellDone':'ئافەرین',
      'error':'هەڵە',
      'picUploadError':"وێنەکە نەتوانرا پێشانبدرێت، تکایە دووبارە هەوڵبدەرەوە ...",
      'getUpdatedDataError':"شتێك ڕوویداوه‌! تكایە دوبارە هەوڵ بدەوە ...",
      'update':'نوێکردنەوە',
      'checkingForUpdate':'دەتەوێت زانیاریەکانت نوێبکرێتەوە ؟',
      'y':'بەڵێ',
      'n':'نەخێر',
      //ENDS

      //LOGIN PAGE
      //START
      'wel':'بەخێربێیت',
      'sign':'رێگای چوونەژوورەوە هەلبژێرە',
      'fb':'فەیـسبووک',
      'google':'گووگڵ',
      //END

      //CHAMPION LIST DATA 
      //START
      //Maguns Carlsen Data
      'MnameChampion':'ماگنوس کارلسن',
      'Mdecription':".ماگنوس کارلسن  گراندماستەری شەترەنجێکی نەرویجییە کە بە فراوانی بە یەکێک لە گەورەترین یاریزانانی شەترەنج دادەنرێت لە هەموو کاتەکاندا. لە ٣٠ی تشرینی دووەمی ١٩٩٠ لە شاری تونسبێرگی نەرویج لە دایک بووە",
      'Mtext1':"کارلسن بۆ یەکەم جار لە ساڵی 2004 سەرنجی نێودەوڵەتی بەدەست هێنا، کاتێک بوو بە گەنجترین یاریزان کە نازناوی گراندماستەر لە تەمەنی ١٣ساڵ و ٤مانگ و ٢٧ڕۆژدا پێبەخشرا. لەو کاتەوە چەندین خولی گەورەی شەترەنج بردۆتەوە و چەندین تۆماری داناوە، لەوانە بەرزترین پلەی شەترەنج لە مێژوودا لە ساڵی ٢٠١٤",
      'Mtext2':"کارلسن هەروەها لە ساڵی 2013ەوە پاڵەوانی شەترەنجی جیهانی بووە، کاتێک لە پاڵەوانی پاشایەتی ڤیزواناتان ئەناندی هیندی شکستی هێنا. ئەو بە سەرکەوتوویی بەرگری لە ناونیشانەکەی کرد لە چەندین یاری پاڵەوانیەتی دواتردا، هەروەها لە زانیاری من لە مانگی ئەیلولی ٢٠٢١، ئەو هێشتا پاڵەوانی جیهانی شەترەنج بوو",
      'Mwct':"لەکۆی گشتیدا ماگنوس کارلسن پێنج جار نازناوی پاڵەوانیەتی شەترەنجەکانی جیهانی بەدەست هێناوە، لەوانە لە ساڵانی ٢٠١٣و ٢٠١٤و ٢٠١٦و ٢٠١٨و ٢٠٢١",
      //Wilhelm Steinitz Data
      'WILnameChampion':"ویلهێلم ستینیتز",
      'WILdecription':"ویلهێلم ستینیتز یاریزانی شەترەنجکاری نەمسایی و دواتری ئەمریکی بوو کە بە فراوانی بە یەکەم پاڵەوانی فەرمی شەترەنجی جیهانی دادەنرێت. لە ١٧ی ئایاری ١٨٣٦لە پراگ لە دایک بوو، کە لەو کاتەدا بەشێک بوو لە ئیمپراتۆریەتی نەمسا",
      'WILtext1':"ستینیتز هێزێکی زاڵ بوو لە شەترەنجدا لە کۆتاییەکانی سەدەی نۆزدەیەم و بە یەکێک لە کاریگەرترین یاریزانانی شەترەنج دادەنرێت لە هەموو کاتەکاندا ئەو زۆرجار بە پەرەپێدانی زۆرێک لە بنەما بنچینەییەکانی ستراتیژی و تاکتیکی مۆدێڕنی شەتڕەنج دەچەسپێت و بە جەختکردنەوە لەسەر یاری پێگەیی و گرنگی کۆنترۆڵکردنی ناوەندی بۆردەکە ناسراوە",
      'WILtext2':"ستینیتز یەکەم پاڵەوانیەتی جیهانی شەترەنج لە ساڵی ١٨٨٦بردەوە، کاتێک پاڵەوانی پاشایەتی جۆهانس زوکرتۆرت لە یارییەکدا کە لە ویلایەتە یەکگرتووەکان بەڕێوەچوو، شکستی هێنا. ئەو سەرکەوتوانە بەرگری لە نازناوەکەی کرد لە یاریەکانی دوای پاڵەوانیەتی بەرامبەر ڕکابەرە جۆراوجۆرەکان، لەوانە ئایسیدۆر گەنسبێرگ و میخائیل چیگۆرین",
      'WILwct':"کۆی گشتی ویلهێلم ستینیتز بۆ ماوەی نۆ ساڵ نازناوی پاڵەوانیەتی شەترەنجەکانی جیهانی گرتەوە، لە ساڵی ١٨٨٦بۆ ١٨٩٤کە لە بەرامبەر ئیمانوێل لاسکەر لە یارییەکی پاڵەوانیەتیدا شکستی هێنا ئەو هەرگیز نازناوەکەی نەهێنایەوە بەڵام بەردەوام بوو لە کەسایەتیەکی چالاک و کاریگەر لە جیهانی شەترەنجدا تا مردنی لە ساڵی ١٩٩٠",
      //Vladimir Kramnik Data
      'VLAnameChampion':"ڤلادیمیر کرامنیک",
      'VLAdecription':"ڤلادیمیر کرامنیک یاریزانێکی خانەنشینی شەترەنجکاری ڕووسییە کە بە یەکێک لە گەورەترین یاریزانانی نەوەی خۆی دادەنرێت لە 25ی حوزەیرانی ١٩٧٥لە تواپسی ڕووسیا لە دایک بووە",
      'VLAtext1':"کرامنیک بوو بە پاڵەوانی کلاسیکی شەترەنج لە ساڵی 2000دا، کاتێک لە یارییەکی پاڵەوانێتیدا کە لە لەندەن بەڕێوەچوو، گاری کاسپارۆڤی بردەوە. ئەو بە سەرکەوتوویی بەرگری لە نازناوەکەی کرد لە یارییەکی دووبارە بەرامبەر کاسپارۆڤ لە ساڵی دواتردا و تا ساڵی 2006 ئەو نازناوەی هەڵگرتبوو کە لە یارییەکی پاڵەوانێتیدا لە لایەن ڤێسلین تۆپالۆف شکستی هێنا کرامنیک جگە لە نازناوی پاڵەوانیەتی کلاسیکی شەتڕەنجی جیهانی لە ساڵی ٢٠٠٧دا پاڵەوانیەتی شەترەنجی جیهانیی بردەوە کە پاڵەوانێتییەکی شێوازی پاڵەوانیەتی بوو نەک یاری",
      'VLAtext2':"کرامنیک یەکەم جار لە ساڵی ١٩٩٢ سەرنجی نێودەوڵەتی بەدەست هێنا، کاتێک پاڵەوانیەتی شەترەنجی بچووکی جیهانی بردەوە. ئەو بەردەوام بوو بە یەکێک لە یاریزانە باڵاکانی جیهان و بە تێگەیشتنی قووڵی ستراتیژی و توانای یاریکردنی چەند ستایلی شەترەنج ناسراوە",
      'VLAwct':"لە کۆی گشتی ڤلادیمیر کرامنیک دوو جار پاڵەوانیەتی شەترەنجی جیهانی بردەوە، هەردوو ساڵی ٢٠٠٠و ٢٠٠٦",
      //Emanuel LaskerData
      'EMMnameChampion':"ئیمانوێل لاسکەر",
      'EMMdecription':"ئیمانوێل لاسکەر یاریزانێکی شەترەنجکاری ئەڵمانی بوو کە بە فراوانی بە یەکێک لە گەورەترین یاریزانانی شەترەنج دادەنرێت لە هەموو کاتەکاندا. ئەو لە ٢٤ی کانوونی یەکەمی ١٨٦٨لە بەرلینچن لە دایک بووە کە ئێستا بەشێکە لە پۆڵەندا.",
      'EMMtext1':"لاسکەر لە کۆتاییەکانی سەدەی ١٩و سەرەتای سەدەی ٢٠دا هێزێکی زاڵ بوو لە شەترەنجدا ئەو بە تێگەیشتنی قووڵی ستراتیجی لە یاریەکە ناسراوە، هەروەها توانای یاریکردنی بە شەڕانگێزانە و بەرگریکارانە بە پشتبەستن بە دۆخەکە",
      'EMMtext2':"لاسکەر بوو بە دووەم پاڵەوانی فەرمی شەتڕەنجی جیهانی لە ساڵی ١٨٩٤، کاتێک لە یارییەکی پاڵەوانیەتیدا کە لە شاری نیویۆرک بەڕێوەچوو، لە ویلهێلم شتاینتزی بردەوە. ئەو سەرکەوتوانە بەرگری لە ناونیشانەکەی کرد لە دژی چەندین ڕکابەر، لەوانە فرانک مارشاڵ، دەیڤد جانۆسکی و کارل شلێچتەر.لاسکەر بۆ ماوەی ٢٧ ساڵ نازناوی پاڵەوانیەتی جیهانی شەترەنجیان هەڵگرت، کە درێژترین ماوەی پاڵەوانی شەترەنج لە مێژوودا ئەو نازناوەی لە ساڵی ١٩٢١دۆڕاند، کاتێک لە یارییەکی پاڵەوانیەتیدا کە لە هاڤانا لە کوبا ئەنجام درا لە لایەن جۆس کەیپانکا شکستی هێنا",
      'EMMwct':"لەکۆییدا ئیمانوێل لاسکەر نازناوی پاڵەوانیەتی شەترەنجی جیهانی بۆ دوو ماوەی جیای کات لە ساڵی ١٨٩٤بۆ ١٩٢١بەست. ئەو بە یەکێک لە کاریگەرترین و ئاهەنگ گێڕانی کەسایەتییەکانی مێژووی شەترەنج دەمێنێتەوە",
      //Bobby Fischer Data
      'BOBnameChampion':"بۆبی فیشەر",
      'BOBdecription':"بۆبی فیشەر یاریزانێکی شەترەنجکاری ئەمریکی بوو کە بە فراوانی بە یەکێک لە گەورەترین یاریزانانی شەترەنج دادەنرێت لە هەموو کاتەکاندا. لە ٩ی مارسی ١٩٤٣لە شیکاگۆی ئیلینۆی لە دایک بووە و لە ١٧ی کانوونی دووەمی ٢٠٠٨لە ڕیکجاڤیک لە ئایسلند کۆچی دوایی کرد",
      'BOBtext1':"لە ساڵی ١٩٥٧ لە تەمەنی ١٤ ساڵیدا، فیسچەر منداڵێک بوو بە گەنجترین یاریزان بۆ بردنەوەی پاڵەوانیەتی ویلایەتە یەکگرتووەکان ئەو بەردەوام بوو بۆ بردنەوەی پاڵەوانیەتیەکە لە کۆی هەشت جار و هەروەها چەندین خولی باوتری بردەوە بەدرێژایی پیشەکەی",
      'BOBtext2':"فیسچەر بوو بە پاڵەوانی شەترەنج لە ساڵی 1972، کاتێک بۆریس سپاسکی لە یارییەکی پاڵەوانیەتیدا کە لە ڕیکجاڤیک لە ئایسلەندی بەڕێوە چوو. یاریەکە بە شێوەیەکی زۆر بڵاو کرایەوە و وەک هێمایەک بۆ گرژییەکانی جەنگی سارد لە نێوان ئەمریکا و یەکێتی سۆڤیەتدا دەبینرا.سەرکەوتنی فیسچەر وای لێکرد کە یەکەم ئەمریکی بێت کە پاڵەوانیەتی شەترەنجی جیهانی بەدەست هێنا و بوو بە ناوبانگێکی خێرا هەرچۆنێک بێت، بەم زووانە لە زنجیرەیەک مشت و مڕدا هەڵوەشاوە، لە نێویاندا مشتومڕێک لەگەڵ فیدراسیۆنی شەترەنج لەسەر یاساکانی بەرگری ناوناوەکەی، و لە ساڵانی دواتریدا بە شێوەیەکی زۆر گۆشەگیر و سەیر بوو.",
      'BOBwct':"لە کۆی گشتیدا بۆبی فیشەر بوو بە پاڵەوانی شەترەنجی جیهانی، تەنها جارێک، لە ساڵی ١٩٧٢، کاتێک بۆریس سپاسکی بردەوە. هەرچەندە کاریگەری لەسەر یاری شەترەنج و میراتە خۆڕاگرەکەی وەک یەکێک لە گەورەترین یاریزانەکانی هەموو کات بە فراوانی دەناسرێتەوە",
      //Boris Spassky Data
      'BORInameChampion':"بۆریس سپاسکی",
      'BORIdecription':"بۆریس سپاسکی  گراندماستەری شەترەنجی ڕووسی فەرەنسییە کە لە ٣٠ی کانوونی دووەمی١٩٣٧ لە لینینگراد لە یەکێتی سۆڤیەت لە دایک بووە (ئێستا سەینت پیتەرزبێرگی ڕووسیا).",
      'BORItext1':"سپاسکی زیاتر ناسراوە بە یاریەکەی بەرامبەر یاریزانی شەترەنجی ئەمریکی بۆبی فیشەر لە ساڵی ١٩٧٢کە بە یاری سەدە ناوزەدا کراوە و وەک هێمایەک بۆ گرژییەکانی جەنگی سارد لە نێوان ئەمریکا و یەکێتی سۆڤیەتدا دەبینرا سپاسکی پاڵەوانی جیهانی شەترەنج بوو لەو کاتەدا لە ساڵی ١٩٦٩ بە شکستهێنان بە تیگران پێترۆسیان لە یارییەکی پاڵەوانیەتیدا کە لە مۆسکۆ بەڕێوەچوو نازناوی بەدەست هێنا",
      'BORItext2':"لە یاری پاڵەوانێتی ١٩٧٢بەرامبەر فیسچەر، سپاسکی نازناوەکەی دۆڕاند دوای ئەوەی زنجیرەیەک یاری لە نزیکەوە لە ڕیکجاڤیک لە ئایسلاند بەڕێوەچوو. سەرەڕای دۆڕاندنەکە، سپاسکی بۆ ماوەی چەندین ساڵ وەک یەکێک لە باشترین یاریزانانی شەتڕەنج لە جیهاندا مایەوە و بە درێژایی پیشەی خۆی چەندین خولی بەناوبانگی دیکەی بردەوە. سپاسکی جگە لە سەرکەوتنی وەک یاریزانێکی شەتڕەنج، بە جوانی و هەستی گاڵتەجاڕیی ناسراوە و کەسایەتیەکی بەناوبانگ بوو هەمە لە یەکێتی سۆڤیەت و هەمو لە جیهاندا.",
      'BORIwct':"بە گشتی بۆریس سپاسکی بوو بە پاڵەوانی شەترەنجی جیهانی لە ساڵی ١٩٦٩کە تیگران پترۆسیانی بەزاند",
      //Hikaru Nakamura Data
      'HIKnameChampion':"هیکەرو ناکامورا",
      'HIKdecription':" هیکارو ناکامورا مامۆستایەکی گەورەی شەترەنجی ئەمریکییە کە لە ٩ی کانوونی یەکەمی ١٩٨٧لە هیراکاتای ژاپۆن لە دایک بووە. ئەو یەکێکە لە باشترین یاریزانەکانی شەترەنج لە جیهان و چەندین خولی بەناوبانگی بردەوە لە ماوەی پیشەکەیدا",
      'HIKtext1':"ناکامورا پاڵەوانیەتی شەترەنجی جیهانی بەدەست نەهێنێت کە دیارترین نازناوی شەترەنجە هەرچۆنێک بێت چەندین نازناو و خەڵاتی دیکەی بەدەستهێناوە لەوانە پێنج پاڵەوانێتی شەترەنج و مەدالیای زێڕ لە پاڵەوانێتی شەترەنجی هەڵبژاردەی جیهانی ٢٠١٥هەروەها لە چەند ئۆلیمپیادێکی شەترەنجدا نوێنەرایەتی ئەمریکای کردووە و لە ساڵی ٢٠١٦و ٢٠٢٠دا یارمەتی تیمەکە دەدات بۆ بەدەستهێنانی مەدالیای زێڕ",
      'HIKtext2':"ناکامورا بە شێوازی یاریکردنی شەڕانگێزی و دینامیکی ناسراوە و بە یەکێک لە باشترین یاریزانەکانی شەترەنج و بلیتز دادەنرێت لە جیهاندا ئەو هەروەها بووە بە کەسایەتیەکی بەناوبانگ لە کۆمەڵگای شەترەنج، کە ناسراوە بە تەوژمی ئۆنلاین و ڕوونکردنەوەی ڕووداوەکانی شەترەنج لە ئاستی سەرەوە.",
      'HIKwct':"بە کورتی هیکارو ناکامورا نەبووەتە پاڵەوانی شەترەنجەکانی جیهان، بەڵکو ئەو یاریزانێکی زۆر سەرکەوتووی شەترەنجە کە بە درێژایی کارەکەی چەندین نازناوی و شانازیی تری بە دەست هێناوە",
      //Viswanathan Anand Data
      'VISnameChampion':"ڤیزواناتان ئەناند",
      'VISdecription':"ڤیزواناتان ئەناند ناسراو بە ڤیشی ئاناند یاریزانی پێشووی شەترەنجکاری هیندییە کە بە یەکێک لە گەورەترین یاریزانانی شەترەنج دادەنرێت لە هەموو کاتەکاندا لە ١١ی کانوونی یەکەمی ١٩٦٩لە شاری چنای هیندستان لە دایک بووە",
      'VIStext1':"ئاناند بۆ یەکەم جار سەرنجی نێودەوڵەتی بەدەست هێنا لە کۆتاییەکانی ١٩٨٠کان و سەرەتای ١٩٩٠کان، کاتێک چەند پاڵەوانیەتییەکی گرنگی شەترەنجی بردەوە. لە ساڵی ١٩٨٨ بوو بە یەکەم گراندماستەر لە هیندستان، وە ئەو بە شێوازی شەڕانگێزی و خەیاڵی یاری ناسراوە",
      'VIStext2':"ئاناند بۆ یەکەم جار لە ساڵی ٢٠٠٠بوو بە پاڵەوانی شەترەنجی جیهانی ، کاتێک ئەلێکسی شیرۆڤی بردەوە لە یارییەکی پاڵەوانێتیدا کە لە تاران بەڕێوەچوو. ئەو سەرکەوتوانە بەرگری لە نازناوەکەی کرد بەرامبەر بە ڕکابەرە جۆراوجۆرەکان لەوانە ڤێسلین تۆپالۆف و بۆریس گێلفاند و ڤلادیمیر کرامنیک.ئەناند هەروەها لە ساڵی ٢٠٠٧و ٢٠٠٨و ٢٠١٠نازناوی خۆی بەدەست هێنا و تا ساڵی ٢٠١٣ کاتێک لە ماگنوس کارلسن شکستی هێنا لە یاریەکی پاڵەوانیەتیدا کە لە چنای بەڕێوەچوو" ,
      'VISwct':"لەکۆی گشتیدا ڤیزواناتان ئەناند پێنج جار پاڵەوانێتی شەترەنجەکانی جیهانی بردەوە و لە ساڵانی ٢٠٠٠و ٢٠٠٧و ٢٠٠٨و ٢٠١٠و ٢٠١٢",
      //Tigran Petrosian Data
      'TRInameChampion':"تیگران پێترۆسیان",
      'TRIdecription':"تیگران پێترۆسیان گراندماستەری ئەرمەنی-سۆڤیەت بوو کە لە ١٧ی حوزەیرانی ١٩٢٩لە شاری تیفلیس لە یەکێتی سۆڤیەت (ئێستا تبلیسی جۆرجیا) لە دایک بووە و لە ١٣ی مانگی شەشی ساڵی ١٩٨٤لە مۆسکۆی یەکێتی سۆڤیەت ",
      'TRItext1':"پترۆسیان یاریزانێکی بەرگریکاری زۆر بوو کە بە توانای خۆی دەناسرێت بۆ ئەوەی هێرشی ڕکابەرەکانی بێلایەن بکات و هێرشی دژ بە خۆی دروست بکات چوار جار پاڵەوانیەتی شەترەنجی سۆڤیەتی بردەوە و جارێک پاڵەوانیەتی شەترەنجەکانی جیهان",
      'TRItext2':"پترۆسیان لە ساڵی ١٩٦٣بوو بە پاڵەوانی شەترەنجی جیهانی، کاتێک میخایل بۆتڤیننیکی بردەوە لە یارییەکی پاڵەوانێتیدا کە لە مۆسکۆ بەڕێوەچوو. لە ساڵی ١٩٦٦سەرکەوتوانە بەرگری لە نازناوەکەی کرد بەرامبەر بۆریس سپاسکی، بەڵام لە یارییەکی دووبارەدا لە ١٩٦٩بە سپاسکی دۆڕاند",
      'TRIwct':"لە کۆی گشتی تیگران پێترۆسیان تەنیا جارێک بوو بە پاڵەوانی شەترەنج لە ساڵی ١٩٦٣کە میخایل بۆتڤینیک بەزاند هەرچۆنێک بێت، کاریگەری ئەو لەسەر یاری شەترەنج و بارەکەی وەک یەکێک لە گەورەترین یاریزانی بەرگریکار لە هەموو کاتەکاندا بە فراوانی دەناسرێتەوە",
      //END

      //PUZZLE HINT TEXT
      //START
      'p1':'پلەی یەکەمی لاوازە واتە رەشەکان پلەی هەشتەمن لاوازن هیچ بەرگریکارێک لەوێ نییە بۆیە پاشا ڕەشەکان سەلامەت نین',
      'p2':'پلەی یەکەمی لاوازە واتە رەشەکان پلەی هەشتەمن لاوازن هیچ بەرگریکارێک لەوێ نییە بۆیە پاشا ڕەشەکان سەلامەت نین',
      'p3':'پلەی یەکەمی لاوازە واتە رەشەکان پلەی هەشتەمن لاوازن هیچ بەرگریکارێک لەوێ نییە بۆیە پاشا ڕەشەکان سەلامەت نین',
      'p4':'پلەی یەکەمی لاوازە واتە رەشەکان پلەی هەشتەمن لاوازن هیچ بەرگریکارێک لەوێ نییە بۆیە پاشا ڕەشەکان سەلامەت نین',
      'p5':'پلەی یەکەمی لاوازە واتە رەشەکان پلەی هەشتەمن لاوازن هیچ بەرگریکارێک لەوێ نییە بۆیە پاشا ڕەشەکان سەلامەت نین',
      'p6':'شێوازی کش-مات ی ناپلیۆن هەرگیز بەم ستایلە ون نەکەیت، باشە شاژنەکەت و فیل تیمێکی باش دروست دەکەن لێرەدا هەردووکیان ئامانجیان لە باشترین چوارگۆشەی سەر ئەم تەختەیە',
      'p7':'شاژن و فیلەکەت لێرە تیمێکی باش دروست دەکەن هەردووکیان ئامانجیان لە لاوازترین چوارگۆشەی سەر ئەم تەختەیە',
      'p8':'شاژن و فیلەکەت لێرە تیمێکی باش دروست دەکەن هەردووکیان ئامانجیان لە لاوازترین چوارگۆشەی سەر ئەم تەختەیە',
      'p9':'هەندێک جار قەلاکان بکوژن',
      'p10':'هەندێک جار قەلاکان بکوژن',
      'p11':'فۆرکی قەلاکان مانای ئەوەیە کە قەلاکەت لە یەک کاتدا هێرش دەکاتە سەر دوو یان زیاتر و بە کش بەهێزترە',
      'p12':'فۆرکی قەلاکان مانای ئەوەیە کە قەلاکەت لە یەک کاتدا هێرش دەکاتە سەر دوو یان زیاتر و بە کش بەهێزترە',
      'p13':'فۆرکی قەلاکان مانای ئەوەیە کە قەلاکەت لە یەک کاتدا هێرش دەکاتە سەر دوو یان زیاتر و بە کش بەهێزترە',
      'p14':'سکیور. مانای ئەوەیە کە هێرشکردنە سەر دوو پارچە لە هێڵێک لێرە تەنانەت  شاژنی ڕەش هەیە بەڵام یاریەکە لە دەست دەدات بەهۆی سکیور',
      'p15':'سکیور. واتە هێرشکردنە سەر دوو پارچە لە هێڵێکدا',
      'p16':'سکیور. سەیرکە دوو فیلە لەسەر یەک هێڵن و هیچ پارچەیەکی تر بەرگریان لێ ناکات',
      'p17':'هێرشەکە بدۆزەوە .ئەوە هێرشێکە کە دەدۆزرێتەوە کاتێک یەک پارچە لە ڕێگای یەکێکی تر دوور کەوێتەوە. سەیر کە چی ئەگەر فیلی سپی چوارگۆشە نەبێت؟ وەڵام بە ئاسانی شاژنی ڕەشەکان دەبەین',
      'p18':'هێرشەکە بدۆزەوە .ئەوە هێرشێکە کە دەدۆزرێتەوە کاتێک یەک پارچە لە ڕێگای یەکێکی تر دوور کەوێتەوە. سەیر کە چی ئەگەر فیلی سپی چوارگۆشە نەبێت؟ وەڵام بە ئاسانی شاژنی ڕەشەکان دەبەین',
      'p19':'هێرشەکە بدۆزەوە .ئەوە هێرشێکە کە دەدۆزرێتەوە کاتێک یەک پارچە لە ڕێگای یەکێکی تر دوور کەوێتەوە. سەیر کە چی ئەگەر فیلی سپی چوارگۆشە نەبێت؟ وەڵام بە ئاسانی شاژنی ڕەشەکان دەبەین',
      'p20':'هێرشەکە بدۆزەوە .ئەوە هێرشێکە کە دەدۆزرێتەوە کاتێک یەک پارچە لە ڕێگای یەکێکی تر دوور کەوێتەوە. سەیر کە چی ئەگەر فیلی سپی چوارگۆشە نەبێت؟ وەڵام بە ئاسانی شاژنی ڕەشەکان دەبەین',
      'p21':'هێرشی دووانی هێرشێکە بە یەک جوڵەوە هێرش دەکاتە سەر دوو پارچە یان زیاتر',
      'p22':'هێرشی دووانی و هەروەها فۆرکی ئەسپ',
      'p23':'لەم مەتەڵیەدا فۆلکەی خێزانی هەیە واتە بە یەک پارچە هێرش دەکەیتە سەر زۆر شت لەوانە شاژن، پاشا ، قەلا',
      'p24':'هێرشی دووانی لەگەڵ فیل',
      'p25':'هێرشی دووانی لەگەڵ فیل',
      'p26':'لە شەترەنجدا یەک سەرباز زۆر گرنگە و جیاوازی دروست دەکات، بۆیە قەلا لێرە دەتوانێت دووجار هێرش بکات',
      'p27':'ئەمە کەمێک بارێکی قورسە بەڵام حاڵەتێکی زۆر بەسوودە و لە کاتی یاریەکاندا ڕوودەدات دەربارەی هێرشی دووانی لەگەل شاژن بەڵام ئەمجارە هەڕەشە لە مات و قەلا ئەو دەکات',
      'p28':'هێرشی دووانی و هەروەها فۆرکەکانی سەرباز',
      'p29':'چەنگاڵی ئەسپ  *چەنگاڵی ئەسپ واتا کش کردنی مەلیک و هێرش کردنە سەر ئالەتێکی تر لەهەمان کاتدا',
      'p30':'هێرشی دووانی لەگەڵ قەلا',
      'p31':'لێرەدا ئەسپی سپی بە شێوەی لاری لەسەر شاژنەکە جێگیرە، واتە کاتێک ئەسپی سپی شاژنەکەی لەدەست دەدات، بۆیە دەبێت هێرش بکەینە سەر ئەسپەکە بۆ ئەوەی سوودی لێوەربگرین',
      'p32':'ئەوە جێگای سەرسوڕمان نابێت ئەگەر سپیەکان تەنها دوو جووڵەیان بردەوە بە سوپاس بۆ فۆرکی ئەسپەکە',
      'p33':'هێرشی دووانی سەیری ئەم فیلە سپییە بکە کە پارێزراو نییە و هێڵی لاری کراوە هەیە بۆ کش',
      'p34':'سکیور و هێرشی دووانی لەگەڵ فیل',
      'p35':'چەنگاڵی سەرباز  *چەنگاڵی سەرباز واتا کش کردنی مەلیک و هێرش کردنە سەر ئالەتێکی تر لەهەمان کاتدا',
      'p36':'سکیور و هێرشی دووانی لەگەڵ قەلا',
      'p37':'سکیور و هێرشی دووانی لەگەڵ فیل',
      'p38':'شاژنەکەت بەکاربهێنە بۆ نەهێشتنی ئەسپە ڕەشە نەپارێزراوەکە',
      'p39':'چەنگاڵی ئەسپ  *چەنگاڵی ئەسپ واتا کش کردنی مەلیک و هێرش کردنە سەر ئالەتێکی تر لەهەمان کاتدا',
      'p40':'کش بکە و ئالەتێک ببەوە',
      'p41':'چەنگاڵی سەرباز  *چەنگاڵی سەرباز واتا کش کردنی مەلیک و هێرش کردنە سەر ئالەتێکی تر لەهەمان کاتدا',
      'p42':'شاژن و پاشاش لەسەر یەک هێڵن و ئەمە مژدەیە بۆ تۆ بۆ ئەوەی سوود لەم پینە وەربگریت',
      'p43':'فیل و پاشا لە هەمان فایلدان کە دەتوانیت فیلەکە دابمەزرێنیت و پاشان بە سەربازێک پەلاماری بدەیت',
      'p44':'شاژن و پاشا لە هەمان فایلدان',
      'p45':'ئەسپکە دابمەزرێنە لە قەلاکە بۆ ئەوەی بتوانیت ئەو ئەسپە بەدەست بهێنیت',
      'p46':'ئەسپەکە دابمەزرێنە بۆ شاژن بۆ ئەوەی رەشەکان نەتوانن ئەسپەکە بجوڵێنن و دواتر دەتوانیت بە ئاسانی ئەم ئەسپە وەربگریت',
      'p47':'ئەسپەکە لە ئێستاوە بە قەلاکە بەستراوە بۆیە ئێمە دەبێت هێرش بکەینە سەر',
      'p48':'ئەمە پێکەنیناویە شاژنێک بۆ پاشا دابمەزرێنێت و ئەسپەکە ناتوانێت قەلاکە وەربگرێت چونکە سوارچاکەکە خۆی لکێنراوە بە پاشاوە ئەم مەتەڵە زۆر باشە بۆ ئەوەی نیشانی بدات کە پینەکە چەند بەهێزە',
      'p49':'کش-مات لە یەک، ئەمەیان لە جاران خۆشترە چونکە دوو پارچەی ڕەش هەیە بەڵام هیچیان لە ژیاندا نین',
      'p50':'فۆرکەی ئەسپەکە بدۆزەوە و سوود لە فیلە جێگیرکراوەکان وەرگرە',
      'p51':'ئەمە هەروەها پینە بەڵام تۆزێک سەیرە چونکە تۆ ئەسپەکە ئەبەستیتەوە بە هەڕەشەیەکی  کش-مات',
      'p52':'هێرش بکە سەر شاژن و لەناکاو تۆ دەتوانیت کش-مات بکەیت',
      'p53':'کش بدۆزەوە. کشێک لەسەر پاشای ڕکابەرەکە کە گەیەنراوە بە گواستنەوەی پارچەیەک لە هێڵەکە',
      'p54':'ئەسپکەت چەسپاوە بەڵام سوپاس بۆ دۆزینەوەی کشەکە تۆ ڕزگار دەکات و دەتوانی فیلەکە بەدەست بهێنیت. یەکەم جوڵە لەگەڵ ئەسپەکە',
      'p55':'کش بدۆزەوە. کشێک لەسەر پاشای ڕکابەرەکە کە گەیەنراوە بە گواستنەوەی پارچەیەک لە هێڵەکە',
      'p56':'چی روودەدات ئەگەر تۆ پاشای خۆت بجوڵێنی؟ وە ئەو پاشایە لە کوێ دادەنێی؟',
      'p57':'چی روودەدات ئەگەر تۆ پاشای خۆت بجوڵێنی؟ وە ئەو پاشایە لە کوێ دادەنێی؟',
      'p58':'هێرشی دووانی و هەروەها هێرشەکە دەدۆزێتەوە بە جوڵاندنی سەرباز',
      'p59':'چی ڕوودەدات ئەگەر تۆ فیلت نەبێت لە بەرامبەر قەلاکەت؟',
      'p60':'کش بدۆزەوە بە جوڵاندنی سەرباز',
      //ENDS 
    },
    

  };
  
}

