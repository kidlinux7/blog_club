import 'package:blog_club/data/data_providers/sample_data.dart';
import 'package:blog_club/presentation/screens/Articles/Article.dart';
import 'package:blog_club/presentation/screens/Profile.dart';
import 'package:blog_club/presentation/widgets/NewsCard.dart';
import 'package:blog_club/presentation/widgets/StatusCard.dart';
import 'package:blog_club/presentation/widgets/Text.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/Theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();
    return Scaffold(
      backgroundColor: customColors.whitePrimary,
      appBar: AppBar(
        backgroundColor: customColors.whitePrimary,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text(
          'Hi, Sample',
          textScaleFactor: 0.55,
          style: GoogleFonts.poppins(
            color: customColors.textColor,
            textStyle: Theme.of(context).textTheme.headlineMedium,
            // fontSize: 13,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_rounded))
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Explore todays',
                    textScaleFactor: 0.65,
                    style: GoogleFonts.poppins(
                      color: const Color(0xff212121),
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      // fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(
              height: 110.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(onTap: (){
                      exploreBottomSheet(context);
                    },
                    child: const StatusCard(image: 'assets/lady_1.jpg', name: 'Jasmine'),
                    ),
                    GestureDetector(onTap: (){
                      exploreBottomSheet(context);
                    },
                      child: const StatusCard(image: 'assets/lady_2.jpg', name: 'Susan'),
                    ),
                    GestureDetector(onTap: (){
                      exploreBottomSheet(context);
                    },
                      child: const StatusCard(image: 'assets/lady_3.jpg', name: 'Hafsa'),
                    ),
                    GestureDetector(onTap: (){
                      exploreBottomSheet(context);
                    },
                      child: const StatusCard(image: 'assets/cow.jpg', name: 'Yukon'),
                    ),
                    GestureDetector(onTap: (){
                      exploreBottomSheet(context);
                    },
                      child: const StatusCard(image: 'assets/art.jpg', name: 'Diu'),
                    ),
                  ],
                  ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 10.0, 0.0, 0.0),
              child: Row(
                children: [
                  LargeText(word: 'Categories', color: customColors.textColorDark),
                ],
              ),
            ),

          SizedBox(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: ClipRRect(
                          borderRadius:const BorderRadius.all(Radius.circular(20.0)),
                          child: Image.asset('assets/art.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),

                      Positioned(
                        top: 100,
                        child: Container(
                          height: 50.0,
                          width: 200.0,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0x10000000),
                                  Color(0xFF000000),
                                ],
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MediumText(word: 'Art', color: customColors.whitePrimary)
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: ClipRRect(
                          borderRadius:const BorderRadius.all(Radius.circular(20.0)),
                          child: Image.asset('assets/parrot.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),

                      Positioned(
                        top: 100,
                        child: Container(
                          height: 50.0,
                          width: 200.0,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0x10000000),
                                  Color(0xFF000000),
                                ],
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MediumText(word: 'Nature', color: customColors.whitePrimary)
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),


            Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      LargeText(word: 'Latest News', color: customColors.textColorDark),
                    ],
                  ),
                  NormalText(word: 'More', color: customColors.bluePrimary)
                ],
              ),
            ),


            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Article()),
                  );
                },
                child: const NewsCard(image: 'assets/chair_wood.jpg', title: 'Lets have some camp time', description: 'Get yourself a mind blowing experience, stepping outdoor', time: '09:30 AM Tuesday, Nov 2023')),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Article()),
                  );
                },
                child: const NewsCard(image: 'assets/lady_1.jpg', title: 'Lets have some camp time', description: 'Get yourself a mind blowing experience, stepping outdoor', time: '09:30 AM Tuesday, Nov 2023')),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Article()),
                  );
                },

                child: const NewsCard(image: 'assets/lady_2.jpg', title: 'Lets have some camp time', description: 'Get yourself a mind blowing experience, stepping outdoor', time: '09:30 AM Tuesday, Nov 2023')),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Article()),
                  );
                },
                child: const NewsCard(image: 'assets/lady_3.jpg', title: 'Lets have some camp time', description: 'Get yourself a mind blowing experience, stepping outdoor', time: '09:30 AM Tuesday, Nov 2023')),

          ],
        ),
      ),
    );
  }

  void exploreBottomSheet(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    final ThemeColors customColors = ThemeColors();
    showModalBottomSheet(
      // Changes the bottomsheet overlay colour
        barrierColor: const Color.fromARGB(54, 0, 0, 0),
        backgroundColor: Colors.white,
        // FOr botttom sheet to no be hidden by keyboard
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return AnimatedPadding(
            // Accessing padding for bottom sheet not be hidden by keyboard
            duration: const Duration(milliseconds: 150),
            // curve: Curves.easeOut,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: deviceHeight,
            child: Stack(
              children: [
                Image.asset('assets/sunset.jpg',fit: BoxFit.cover,height: deviceHeight,),
                Container(
                  height: 140.0,
                  width: deviceWidth,
                ).blurred(
                  blur: 5.0,
                  blurColor: const Color(0x08000000),
                  overlay:  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 5.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 3.0,
                                  width: deviceWidth * 0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 3.0,
                                  width: deviceWidth * 0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 3.0,
                                  width: deviceWidth * 0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),



                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          ClipRRect(
                                                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset('assets/lady_1.jpg',fit: BoxFit.cover,height: 50.0,width: 50.0,)),
                                                          const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LargeText(word: 'Julia Martinez', color: Colors.white),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SmallText(word: '4m ago', color: Colors.white),
                                        SizedBox(width: 10.0,),
                                        Row(
                                          children: [
                                            Icon(Icons.favorite_border_rounded,color: Colors.white,size: 10.0,),
                                            SmallText(word: '200', color: Colors.white)
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                                          )
                                                        ]
                              
                                ),
                              ),
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon:const Icon(Icons.close,color: Colors.white,))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),


                Positioned(
                  top: deviceHeight * 0.82,
                  child: SizedBox(
                    height: 155.0,
                    width: deviceWidth,
                  ).blurred(
                      blur: 5.0,
                      blurColor: const Color(0x08000000),
                      overlay: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LargeText(word: 'Want a happy marriage ?', color: Colors.white),
                                IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,color: Colors.red,))
                              ],

                            ),
                            Text(
                              'It’s a common misconception about why most couples have a ....',
                              textScaleFactor: 0.45,
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 4,
                              style: GoogleFonts.poppins(
                                color: customColors.whitePrimary,
                                textStyle: Theme.of(context).textTheme.headlineMedium,
                                // fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            GestureDetector(
                              child: Row(
                                children: [
                                  const SmallText(word: 'Read more', color: Colors.white),
                                  IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_right_alt_outlined,color: Colors.white,size: 15,))

                                ],
                              ),
                            )

                          ],
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
          );
        });
  }
}
