import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/Theme.dart';
import '../../widgets/Text.dart';

class NewArticle extends StatefulWidget {
  const NewArticle({super.key});

  @override
  State<NewArticle> createState() => _NewArticleState();
}

class _NewArticleState extends State<NewArticle> {
  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: customColors.whitePrimary,
        appBar: AppBar(
          backgroundColor: customColors.whitePrimary,
          iconTheme: IconThemeData(color: customColors.textColor, size: 30.0),
          elevation: 0.0,
          title: Text(
            '',
            textScaleFactor: 0.65,
            style: GoogleFonts.montserrat(
              color: const Color(0xff525252),
              textStyle: Theme.of(context).textTheme.headlineMedium,
              // fontSize: 13,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
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
                          'New Article',
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
                    padding:
                    const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NormalText(
                              word: 'Title', color: Colors.grey),
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
                              word: 'Category', color: Colors.grey),
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
                              word: 'Add Content', color: Colors.grey),
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
                              word: 'Thumbnail Image', color: Colors.grey),
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
                              word: 'Content Image', color: Colors.grey),
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
                            word: 'Create article',
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




                ],
              ),
            ],
          ),
        ));
  }
}
