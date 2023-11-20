import 'package:blog_club/presentation/theme/Theme.dart';
import 'package:blog_club/presentation/widgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/NewsCard.dart';
import 'Articles/Article.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _showFab = true;
  @override
  Widget build(BuildContext context) {
        const duration = Duration(milliseconds: 300);
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    final ThemeColors customColors = ThemeColors();
    return Scaffold(
      backgroundColor: customColors.whitePrimary,
      appBar: AppBar(
        backgroundColor: customColors.whitePrimary,
        iconTheme: IconThemeData(color: customColors.textColor, size: 30.0),
        elevation: 0.0,
        title: Text(
          '',
          textScaleFactor: 0.65,
          style: GoogleFonts.montserrat(
            color: const Color(0xff525252),
            textStyle: Theme.of(context).textTheme.headlineMedium,
            // fontSize: 13,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          setState(() {
            if (direction == ScrollDirection.reverse) {
              _showFab = false;
            } else if (direction == ScrollDirection.forward) {
              _showFab = true;
            }
          });
          return true;
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.asset('assets/lady_1.jpg',fit: BoxFit.cover,height: 50.0,width: 50.0,)),
                               Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MediumText(word: 'Julia Martinez', color: customColors.textColor),
                                    NormalText(word: 'Astronaut', color: customColors.bluePrimary),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SmallText(word: '250 Following', color: customColors.textColorLight),
                                        SmallText(word: ' 4.5k Followers', color: customColors.textColorLight),
                        
                        
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ]
                        
                        ),
                      ],
                    ),
                  ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      NormalText(word: 'About me', color: customColors.textColor),
                    ],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: deviceWidth,
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Marriage is a profound and sacred union between two individuals, a commitment that transcends the bounds of mere companionship. It is a journey marked by shared joys, challenges, and a deep emotional connection. This institution not only binds two people legally and socially but also intertwines their lives, dreams, and aspirations. Marriage provides a foundation for support, understanding, and growth, fostering an environment where both partners can evolve and thrive together. It is a partnership built on love, trust, and compromise, where each person contributes to the collective narrative of their shared life.',
                                  textScaleFactor: 0.45,
                                  // overflow: TextOverflow.ellipsis,
                                  // maxLines: 4,
                                  style: GoogleFonts.poppins(
                                    color: customColors.textColor,
                                    textStyle: Theme.of(context).textTheme.headlineMedium,
                                    // fontSize: 13,

                                    fontWeight: FontWeight.w400,

                                    fontStyle: FontStyle.normal,
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NormalText(word: 'My posts', color: customColors.textColor),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: deviceHeight,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return   GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Article()),
                              );
                            },
                            child:
                            const NewsCard(image: 'assets/chair_wood.jpg', title: 'Lets have some camp time', description: 'Get yourself a mind blowing experience, stepping outdoor', time: '09:30 AM Tuesday, Nov 2023'),

                          );
                        }),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: AnimatedSlide(
          duration: duration,
          offset: _showFab ? Offset.zero : Offset(0, 2),
          child: AnimatedOpacity(
            duration: duration,
            opacity: _showFab ? 1 : 0,
            child: Container(
              height: 40.0,
              width:100.0,
              decoration: BoxDecoration(
                color: customColors.textColorDark,
                borderRadius: BorderRadius.circular(14.0),

              ),
              child:GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    IconButton(onPressed: (){}, icon:const Icon(Icons.people,color: Colors.white,size: 15,)),

                    const NormalText(word: 'Follow', color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}