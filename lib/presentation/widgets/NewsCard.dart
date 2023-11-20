import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/Theme.dart';
import 'Text.dart';


class NewsCard extends StatelessWidget{
  const NewsCard({Key? key, required this.image, required this.title, required this.description, required this.time}):super (key:key);

final String image;
final String title;
final String description;
final String time;

@override
  Widget build(BuildContext context){
  final ThemeColors customColors = ThemeColors();
  return Padding(
    padding: const EdgeInsets.all(9.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100.0,
          width: 110.0,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(image,
                fit: BoxFit.cover,
                height: 100.0,
                width: 110.0,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 200,
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NormalText(word: title, color: customColors.bluePrimary),
                      Text(
                        description,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.access_time,color: customColors.textColorLight,size: 15,),
                            SmallText(word: time, color: customColors.textColorLight)
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );

}
}