// import 'package:blog_club/presentation/screens/Registration.dart';
import 'package:flutter/material.dart';

import '../theme/Theme.dart';
import '../widgets/Text.dart';
import 'Login.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final ThemeColors customColors = ThemeColors();

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Container(
        color: customColors.whitePrimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0.0, 8, 0.0),
                      child: SizedBox(
                        height: 200,
                        width: deviceWidth * 0.25,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "assets/art.jpg",
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0.0, 8, 0.0),
                      child: SizedBox(
                        height: 200,
                        width: deviceWidth * 0.55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "assets/cow.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0.0, 8, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      width: deviceWidth * 0.55,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "assets/parrot.jpg",
                          fit: BoxFit.cover,

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0.0, 8, 0.0),
                    child: SizedBox(
                      height: 200,
                      width: deviceWidth * 0.25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "assets/lady_2.jpg",
                          fit: BoxFit.cover,

                        ),
                      ),
                    ),
                  ),

                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 10.0),
              child: LargeText(word: 'Explore , organize and  read\n all your favorite articles', color: customColors.textColor, ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NormalText(word: 'You can read thousands of articles from a\n variety of topics , save them and share with \nloved ones.', color: customColors.textColor, ),
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
                    color: customColors.bluePrimary,
                    child: const NormalText(
                      word: 'Get started',
                      color: Colors.white,
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()),
                      );
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
      ),
    );
  }
}
