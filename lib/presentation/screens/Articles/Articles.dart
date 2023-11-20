import 'package:blog_club/presentation/screens/Articles/Article.dart';
import 'package:blog_club/presentation/widgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/Theme.dart';
import '../../widgets/NewsCard.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    final ThemeColors customColors = ThemeColors();
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: deviceWidth * 0.8,
                  child: TextFormField(
                    // controller: searchKeyword,
                    enableSuggestions: true,
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      // suffixIcon: const Icon(
                      //   Icons.done_rounded,
                      //   color: Colors.green,
                      // ),
                      hintText: 'Search',

                      // suffixIcon: IconButton(
                      //     onPressed: () {}, icon: const Icon(Icons.search)),
                      hintStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: 14.0,
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: customColors.fieldColor,
                      contentPadding: const EdgeInsets.all(10.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(0, 36, 10, 10)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password required';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      // serviceProviderBloc.add(fetchServiceProvider(
                      //     categoryId: 0,
                      //     fullName: searchKeyword.text,
                      //     title: ''));
                    },
                  ),
                ),
                IconButton(
                    onPressed: () {
                      categoriesBottomSheet(context);
                    },
                    icon: const Icon(
                      Icons.grid_view_outlined,
                    ))
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LargeText(word: 'Category (All)', color: customColors.textColorDark),
              ],
            ),
          ),

          SizedBox(
            height: deviceHeight,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
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
    );
  }

  //   Categories Bottomsheet
  void categoriesBottomSheet(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    final ThemeColors customColors = ThemeColors();
    showModalBottomSheet(
      // Changes the bottomsheet overlay colour
        barrierColor: Color.fromARGB(54, 0, 0, 0),
        backgroundColor: Colors.transparent,
        // FOr botttom sheet to no be hidden by keyboard
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return AnimatedPadding(
            // Accessing padding for bottom sheet not be hidden by keyboard
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOut,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                      child: Row(
                        children: [
                          MediumText(
                              word: 'Categories',
                              color: customColors.textColor),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                            child: Text(
                              'All',
                              textScaleFactor: 0.5,
                              style: GoogleFonts.poppins(
                                color: customColors.bluePrimary,
                                textStyle:
                                Theme.of(context).textTheme.headlineMedium,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Padding(
                          padding:const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                          child: NormalText(word: 'Family', color: customColors.textColor),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        Padding(
                          padding:const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                          child: NormalText(word: 'Fashion', color: customColors.textColor),
                        )
                      ],
                    ),




                  ],
                )),
          );
        });
  }


}
