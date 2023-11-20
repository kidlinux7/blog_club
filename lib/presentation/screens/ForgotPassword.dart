import 'package:blog_club/presentation/screens/OTP.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_club/presentation/widgets/text.dart';

import '../theme/Theme.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: customColors.whitePrimary,
        appBar: AppBar(
          backgroundColor: customColors.whitePrimary,
          iconTheme: IconThemeData(color: customColors.textColor, size: 30.0),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0,10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot your password ?',
                          textScaleFactor: 0.65,
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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NormalText(
                            word: 'Once you have reset your password . A 4-digit\n code will be sent to your email for validation',
                            color: Color(0xffA0A0A0)),
                      ],
                    ),
                  ),


                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NormalText(
                              word: 'Email', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: email,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: const TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: customColors.fieldColor,
                            contentPadding: const EdgeInsets.all(10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(0, 36, 10, 10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password required';
                            }
                            return null;
                          },
                          // onChanged: (value) {
                          //   _phoneBloc.add(PhoneValidation(phone: value));
                          // },
                        ),
                      ],
                    ),
                  ),



                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NormalText(
                              word: 'Old password', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: email,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: const TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: customColors.fieldColor,
                            contentPadding: const EdgeInsets.all(10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(0, 36, 10, 10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password required';
                            }
                            return null;
                          },
                          // onChanged: (value) {
                          //   _phoneBloc.add(PhoneValidation(phone: value));
                          // },
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NormalText(
                              word: 'New password', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: email,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: const TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: customColors.fieldColor,
                            contentPadding: const EdgeInsets.all(10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(0, 36, 10, 10)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password required';
                            }
                            return null;
                          },
                          // onChanged: (value) {
                          //   _phoneBloc.add(PhoneValidation(phone: value));
                          // },
                        ),
                      ],
                    ),
                  ),




                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),
                        child: MaterialButton(
                          splashColor: const Color.fromARGB(255, 3, 6, 150),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                          elevation: 5.0,
                          minWidth: deviceWidth * 0.8,
                          height: 50.0,
                          color: customColors.bluePrimary,
                          child: const NormalText(
                            word: 'Reset password',
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Otp()),
                            );

                          },
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ],
          ),
        ));
  }
}
