import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:blog_club/presentation/widgets/text.dart';

import '../theme/Theme.dart';
// import 'package:get/get.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  // void resendOTP() {
  //   Get.snackbar(
  //     "",
  //     "Resending OTP",
  //     icon: const Icon(Icons.refresh, color: Colors.white),
  //     snackPosition: SnackPosition.BOTTOM,
  //   );
  // }

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
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
                          'Check your SMS',
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
                   Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const NormalText(
                            word: 'We have sent a 4-digit code to \nPlease enter it carefully.',
                            color: Color(0xffA0A0A0)),
                        Text(
                          '0716241549',
                          textScaleFactor: 0.45,
                          style: GoogleFonts.poppins(
                            color: customColors.bluePrimary,
                            textStyle: Theme.of(context).textTheme.headlineMedium,
                            // fontSize: 13,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 55),
                    child: Center(
                      child: PinCodeTextField(
                        keyboardType: TextInputType.number,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(15),
                          fieldHeight: 55,
                          fieldWidth: 55,
                          activeFillColor:
                          const Color.fromARGB(255, 230, 230, 230),
                          inactiveFillColor: customColors.textColor,
                          inactiveColor:customColors.fieldColor,
                          borderWidth: 0.0,
                        ),
                        animationDuration: const Duration(milliseconds: 200),
                        // backgroundColor: Color(0xffb74093),
                        enableActiveFill: false,
                        // controller: _token,
                        onCompleted: (v) {
                          // debugPrint("Completed");
                          // if (_formKey.currentState!.validate()) {
                          //   otpBloc.add(VerifyOtp(
                          //     token: _token.text.trim(),
                          //   ));
                          // }
                        },
                        onChanged: (value) {
                          // debugPrint(value);
                          // setState(() {
                          //   currentText = value;
                          // });
                        },
                        beforeTextPaste: (text) {
                          return true;
                        },
                        appContext: context,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "OTP required";
                          }
                          // if (value.length<6) {
                          //   return "Invalid OTP";
                          // }
                        },
                      ),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NormalText(word: 'Valid for', color: customColors.textColor),
                      Text(
                        '03:07',
                        textScaleFactor: 0.45,
                        style: GoogleFonts.poppins(
                          color: customColors.textColor,
                          textStyle: Theme.of(context).textTheme.headlineMedium,
                          // fontSize: 13,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                        child: MaterialButton(
                          splashColor: const Color.fromARGB(255, 3, 6, 150),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                          elevation: 5.0,
                          minWidth: deviceWidth * 0.8,
                          height: 50.0,
                          color: const Color(0xff3549FF),
                          child: const NormalText(
                            word: 'Activate',
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // if (username.text.isEmpty ||
                            //     password.text.isEmpty ||
                            //     username.text.length < 3) {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //       const SnackBar(
                            //           content: Text(
                            //               'Error: Enter valid credentials')));
                            // } else {
                            //   loginBloc.add(LoginButtonPressed(
                            //       username: username.text,
                            //       password: password.text));
                            // }
                          },
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding:
                    EdgeInsets.fromLTRB(0.0, deviceHeight * 0.04, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const NormalText(
                            word: 'Didnt recieve token ?',
                            color: Color.fromARGB(255, 109, 109, 109)),
                        const SizedBox(
                          width: 3.0,
                        ),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Row(
                            children: [
                              Text(
                                'Resend',
                                textScaleFactor: 0.45,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff3549FF),
                                  textStyle: Theme.of(context).textTheme.headlineMedium,
                                  // fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                               Icon(Icons.restart_alt_rounded,color: customColors.bluePrimary,size: 19.0,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
