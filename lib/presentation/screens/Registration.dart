import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_club/presentation/screens/login.dart';
import 'package:blog_club/presentation/screens/otp.dart';
import 'package:blog_club/presentation/widgets/text.dart';

import '../theme/Theme.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final username = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final companyName = TextEditingController();

  bool passwordVisibility = false;

  @override
  void initState() {
    passwordVisibility = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();

    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: customColors.whitePrimary,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  // For Testing purposes this page will be conditioned based on the logged in user role

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0,40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Let’s get you onboard',
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
                            word: 'Add your information below',
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
                              word: 'Firstname', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: password,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.text,
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
                              word: 'Lastname', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: password,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.text,
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
                              word: 'Email', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: password,
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
                              word: 'Phone number', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: password,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.phone,
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
                              word: 'Password', color: Colors.grey),
                        ),
                        TextFormField(
                          // controller: password,
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
                        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                        child: MaterialButton(
                          splashColor: const Color.fromARGB(255, 92, 121, 19),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                          elevation: 5.0,
                          minWidth: deviceWidth * 0.8,
                          height: 50.0,
                          color: const Color(0xff3549FF),
                          child: const NormalText(
                            word: 'REGISTER',
                            color: Colors.white,
                          ),
                          // child: BlocBuilder<LoginBloc, LoginState>(
                          //   bloc: loginBloc,
                          //   builder: (context, state) {
                          //     if (state is LoginLoading) {
                          //       return const Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(
                          //           child: CircularProgressIndicator(
                          //             color: Colors.white,
                          //           ),
                          //         ),
                          //       );
                          //     } else {
                          //       return const NormalText(
                          //         word: 'Login',
                          //         color: Colors.white,
                          //       );
                          //     }
                          //   },
                          // ),
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

                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SmallText(
                            word: 'OR REGISTER WITH',
                            color: Color.fromARGB(255, 109, 109, 109)),


                      ],
                    ),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/google.png'),
                        ),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/facebook.png'),
                        ),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/twitter.png'),
                        ),
                      )
                    ],
                  )



                ],
              ),
            ],
          ),
        ));
  }
}
