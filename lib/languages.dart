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
      'titleofpuzzle':'Puzzle Screen',
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
      //ENDS

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
      //ENDS

      //-
      //START

      //ENDS

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
    },
    

  };
  
}