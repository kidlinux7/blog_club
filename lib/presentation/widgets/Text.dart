import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  const SmallText({Key? key, required this.word, required this.color})
      : super(key: key);
  final String word;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      textScaleFactor: 0.35,
      style: GoogleFonts.poppins(
        color: color,
        textStyle: Theme.of(context).textTheme.headlineMedium,
        // fontSize: 13,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  const NormalText({Key? key, required this.word, required this.color})
      : super(key: key);
  final String word;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: 0.43,
      word,
      overflow: TextOverflow.fade,
      style: GoogleFonts.poppins(
        color: color,
        textStyle: Theme.of(context).textTheme.headlineMedium,
        // fontSize: 15,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  const MediumText({Key? key, required this.word, required this.color})
      : super(key: key);
  final String word;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: 0.59,
      word,
      style: GoogleFonts.poppins(
        color: color,
        textStyle: Theme.of(context).textTheme.headlineMedium,
        // fontSize: 20,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class LargeText extends StatelessWidget {
  const LargeText({Key? key, required this.word, required this.color})
      : super(key: key);
  final String word;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: 0.7,
      word,
      style: GoogleFonts.poppins(
        color: color,
        textStyle: Theme.of(context).textTheme.headlineMedium,
        // fontSize: 23,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key, required this.word, required this.color})
      : super(key: key);
  final String word;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: 0.6,
      word,
      style: GoogleFonts.poppins(
        color: color,
        textStyle: Theme.of(context).textTheme.headlineMedium,
        fontSize: 25,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
