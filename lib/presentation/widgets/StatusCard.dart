import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/Theme.dart';
import 'Text.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({Key? key, required this.image, required this.name}):super (key:key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              gradient: LinearGradient(colors: [Color(0xff386BED), Color(0xffE1E6F1)]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(18.0)),
                  color: customColors.whitePrimary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(image,
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SmallText(word: name, color: customColors.textColor)
      ],
    );
  }
}
