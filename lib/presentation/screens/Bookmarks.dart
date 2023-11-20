import 'package:blog_club/presentation/screens/Articles/Article.dart';
import 'package:blog_club/presentation/theme/Theme.dart';
import 'package:blog_club/presentation/widgets/NewsCard.dart';
import 'package:blog_club/presentation/widgets/Text.dart';
import 'package:flutter/material.dart';

class Bookmarks extends StatefulWidget {
  const Bookmarks({super.key});

  @override
  State<Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
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
                  width: deviceWidth * 0.9,
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
              ],
            ),
          ),


          SizedBox(
            height: deviceHeight,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return   Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Article()),
                      );
                        },
                        child:
                        const NewsCard(image: 'assets/chair_wood.jpg', title: 'Lets have some camp time', description: 'Get yourself a mind blowing experience, stepping outdoor', time: '09:30 AM Tuesday, Nov 2023'),

                      ),
                      IconButton(onPressed: (){
                        
                      }, icon:  Icon(Icons.delete,color: customColors.bluePrimary,))
                    ],
                  );
                }),
          ),





        ],
      ),
    );
  }
}
