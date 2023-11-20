import 'package:blog_club/presentation/screens/Profile.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/Theme.dart';
import '../../widgets/Text.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
            textStyle: Theme.of(context).textTheme.headline4,
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
                    padding: const EdgeInsets.fromLTRB(20.0,10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Want a happy marriage ?',
                          textScaleFactor: 0.75,
                          style: GoogleFonts.poppins(
                            color: const Color(0xff525252),
                            textStyle: Theme.of(context).textTheme.headlineMedium,
                            // fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
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
                                 Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      NormalText(word: 'Julia Martinez', color: customColors.textColor),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SmallText(word: '4m ago', color: customColors.textColorLight),
                        
                        
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]
                        
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){
                            }, icon: Icon(Icons.share_outlined,color: customColors.bluePrimary,)),
                            IconButton(onPressed: (){
                            }, icon: Icon(Icons.bookmark_border_rounded,color: customColors.bluePrimary,)),
                          ],
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: Image.asset('assets/sunset.jpg',
                    height: 300.0,
                    width: deviceWidth,
                      fit:BoxFit.cover,
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
                  )





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
                color: customColors.bluePrimary,
                borderRadius: BorderRadius.circular(14.0),

              ),
              child:GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border_rounded,color: Colors.white,size: 15,)),

                    const NormalText(word: '2.22K', color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
