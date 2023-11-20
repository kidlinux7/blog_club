import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/Theme.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    final ThemeColors customColors = ThemeColors();
    return Scaffold(
      body:ListView(
        scrollDirection: Axis.vertical,
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 10.0, horizontal: 10.0),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),
             ),
             elevation: 0,
             shadowColor: const Color.fromARGB(143, 245, 245, 245),
             color: const Color.fromARGB(255, 255, 255, 255),
             child: GestureDetector(
               onTap: () {
               },
               child: SizedBox(
                 width: deviceWidth,
                 height: 80,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       vertical: 10.0, horizontal: 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const Icon(
                             Icons.lock,
                             size: 32.0,
                             color: Colors.grey,
                           ),
                           const SizedBox(
                             width: 10.0,
                           ),
                           Column(
                             crossAxisAlignment:
                             CrossAxisAlignment.start,
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                               Text(
                                   'Change password',
                                   textScaleFactor: 1.2,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w500,
                                           color: Colors.grey))),
                               Text(
                                   'Update your current password',
                                   textScaleFactor: 0.9,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w300,
                                           color: Color.fromARGB(
                                               255, 163, 163, 163)))),
                             ],
                           )
                         ],
                       ),
                        Icon(
                         Icons.chevron_right,
                         size: 30.0,
                         color: customColors.textColor,
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),


         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 0.0, horizontal: 10.0),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),
             ),
             elevation: 0,
             shadowColor: const Color.fromARGB(143, 245, 245, 245),
             color: const Color.fromARGB(255, 255, 255, 255),
             child: GestureDetector(
               onTap: () {},
               child: SizedBox(
                 width: deviceWidth,
                 height: 80,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       vertical: 10.0, horizontal: 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const Icon(
                             Icons.email,
                             size: 32.0,
                             color: Colors.grey,
                           ),
                           const SizedBox(
                             width: 10.0,
                           ),
                           Column(
                             crossAxisAlignment:
                             CrossAxisAlignment.start,
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                               Text(
                                   'Change email',
                                   textScaleFactor: 1.2,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w500,
                                           color: Colors.grey))),
                               Text(
                                   'Update your current email',
                                   textScaleFactor: 0.9,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w300,
                                           color: Color.fromARGB(
                                               255, 163, 163, 163)))),
                             ],
                           )
                         ],
                       ),
                       Icon(
                         Icons.chevron_right,
                         size: 30.0,
                         color: customColors.textColor,
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),


         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 0.0, horizontal: 10.0),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),),
             elevation: 0,
             shadowColor: const Color.fromARGB(143, 245, 245, 245),
             color: const Color.fromARGB(255, 255, 255, 255),
             child: GestureDetector(
               onTap: () {},
               child: SizedBox(
                 width: deviceWidth,
                 height: 80,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       vertical: 10.0, horizontal: 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const Icon(
                             Icons.supervised_user_circle,
                             size: 32.0,
                             color: Colors.grey,
                           ),
                           const SizedBox(
                             width: 10.0,
                           ),
                           Column(
                             crossAxisAlignment:
                             CrossAxisAlignment.start,
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                               Text(
                                   'My profile',
                                   textScaleFactor: 1.2,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w500,
                                           color: Colors.grey))),
                               Text(
                                   'Manage your profile',
                                   textScaleFactor: 0.9,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w300,
                                           color: Color.fromARGB(
                                               255, 163, 163, 163)))),
                             ],
                           )
                         ],
                       ),
                       Icon(
                         Icons.chevron_right,
                         size: 30.0,
                         color: customColors.textColor,
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),


         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 0.0, horizontal: 10.0),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),),
             elevation: 0,
             shadowColor: const Color.fromARGB(143, 245, 245, 245),
             color: const Color.fromARGB(255, 255, 255, 255),
             child: GestureDetector(
               onTap: () {},
               child: SizedBox(
                 width: deviceWidth,
                 height: 80,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       vertical: 10.0, horizontal: 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const Icon(
                             Icons.dark_mode,
                             size: 32.0,
                             color: Colors.grey,
                           ),
                           const SizedBox(
                             width: 10.0,
                           ),
                           Column(
                             crossAxisAlignment:
                             CrossAxisAlignment.start,
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                               Text(
                                   'Dark-mode',
                                   textScaleFactor: 1.2,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w500,
                                           color: Colors.grey))),
                               Text(
                                   'Protect your eyes',
                                   textScaleFactor: 0.9,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w300,
                                           color: Color.fromARGB(
                                               255, 163, 163, 163)))),
                             ],
                           )
                         ],
                       ),
                       Icon(
                         Icons.chevron_right,
                         size: 30.0,
                         color: customColors.textColor,
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 0.0, horizontal: 10.0),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),),
             elevation: 0,
             shadowColor: const Color.fromARGB(143, 245, 245, 245),
             color: const Color.fromARGB(255, 255, 255, 255),
             child: GestureDetector(
               onTap: () {},
               child: SizedBox(
                 width: deviceWidth,
                 height: 80,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       vertical: 10.0, horizontal: 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const Icon(
                             Icons.delete,
                             size: 32.0,
                             color: Colors.red,
                           ),
                           const SizedBox(
                             width: 10.0,
                           ),
                           Column(
                             crossAxisAlignment:
                             CrossAxisAlignment.start,
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                               Text(
                                   'Delete',
                                   textScaleFactor: 1.2,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w500,
                                           color: Colors.red))),
                               Text(
                                   'Permanently removing your account',
                                   textScaleFactor: 0.9,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w300,
                                           color: Colors.red))),
                             ],
                           )
                         ],
                       ),
                       const Icon(
                         Icons.chevron_right,
                         size: 30.0,
                         color: Colors.red,
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.symmetric(
               vertical: 0.0, horizontal: 10.0),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),),
             elevation: 0,
             shadowColor: const Color.fromARGB(143, 245, 245, 245),
             color: const Color.fromARGB(255, 255, 255, 255),
             child: GestureDetector(
               onTap: () {},
               child: SizedBox(
                 width: deviceWidth,
                 height: 80,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                       vertical: 10.0, horizontal: 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           const Icon(
                             Icons.logout,
                             size: 32.0,
                             color: Colors.grey,
                           ),
                           const SizedBox(
                             width: 10.0,
                           ),
                           Column(
                             crossAxisAlignment:
                             CrossAxisAlignment.start,
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                               Text(
                                   'Logout',
                                   textScaleFactor: 1.2,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w500,
                                           color: Colors.grey))),
                               Text(
                                   'Exit from this account',
                                   textScaleFactor: 0.9,
                                   style: GoogleFonts.poppins(
                                       textStyle: const TextStyle(
                                           fontWeight: FontWeight.w300,
                                           color: Color.fromARGB(
                                               255, 163, 163, 163)))),
                             ],
                           )
                         ],
                       ),
                       Icon(
                         Icons.chevron_right,
                         size: 30.0,
                         color: customColors.textColor,
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),

       ],
      )
    );
  }
}
