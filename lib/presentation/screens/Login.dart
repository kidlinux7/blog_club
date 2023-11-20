import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_club/presentation/screens/ForgotPassword.dart';
// import 'package:receiptapp/presentation/screens/home.dart';
import 'package:blog_club/presentation/screens/registration.dart';
// import 'package:receiptapp/presentation/widgets/navbar.dart';
import 'package:blog_club/presentation/widgets/text.dart';

import '../theme/Theme.dart';
import '../widgets/Navbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool passwordVisibility = false;

  @override
  void initState() {
    passwordVisibility = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();

    double deviceHeight = MediaQuery.of(context).size.height;
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
                  SizedBox(
                    height: deviceHeight * 0.1,
                    // height: 200,
                  ),

                  // For Testing purposes this page will be conditioned based on the logged in user role
                  Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                    height: 100.0,
                  ),



                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0,40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back',
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
                            word: 'Sign in with your account',
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
                              word: 'Password', color: Colors.grey),
                        ),
                        TextFormField(
                          controller: password,
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            // suffixIcon: const Icon(
                            //   Icons.done_rounded,
                            //   color: Colors.green,
                            // ),
                            hintText: '',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (passwordVisibility == false) {
                                      passwordVisibility = true;
                                    } else {
                                      passwordVisibility = false;
                                    }
                                  });
                                },
                                icon: Icon(passwordVisibility
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
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
                    padding: const EdgeInsets.fromLTRB(50.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ForgotPassword()),
                            );
                          }),
                          child:  SmallText(
                              word: 'Forgot your password ?',
                              color: customColors.bluePrimary),
                        )
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
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
                            word: 'Login',
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Navbar()),
                            );

                          },
                        ),
                      ),
                    ],
                  ),



                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const NormalText(
                            word: 'Create a new account ?',
                            color: Color.fromARGB(255, 109, 109, 109)),
                        const SizedBox(
                          width: 3.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Registration()),
                            );
                          },
                          child: Text(
                            'Register here',
                            textScaleFactor: 0.45,
                            style: GoogleFonts.poppins(
                              color: const Color(0xff3549FF),
                              textStyle: Theme.of(context).textTheme.headline4,
                              // fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SmallText(
                            word: 'OR LOGIN WITH',
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
