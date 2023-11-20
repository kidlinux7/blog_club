import 'package:blog_club/presentation/screens/Articles/NewArticle.dart';
import 'package:flutter/material.dart';
import 'package:blog_club/presentation/screens/Bookmarks.dart';
import 'package:blog_club/presentation/screens/Home.dart';
import 'package:blog_club/presentation/screens/Articles/Articles.dart';
import 'package:blog_club/presentation/screens/Settings.dart';

import '../theme/Theme.dart';


class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

int _selectPage = 0;
final _pageOptions = [const Home(), const Articles(), const Bookmarks(), const Settings(), const NewArticle()];

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final ThemeColors customColors = ThemeColors();
    return Scaffold(
      body: IndexedStack(
        index: _selectPage,
        children: _pageOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor:const Color.fromARGB(255, 231, 231, 231),
        elevation: 0.0,
        iconSize: 27.0,
        selectedFontSize: 9.5,
        unselectedFontSize: 9.5,
        selectedItemColor: customColors.bluePrimary,
        unselectedItemColor:const Color.fromARGB(255, 204, 204, 204),
        currentIndex: _selectPage,
        onTap: (int index) {
          setState(() {
            _selectPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor:_selectPage == 4? customColors.textColorDark:customColors.bluePrimary,
        tooltip: 'Add Article',
        onPressed: (){
          // setState(() {
          //   _selectPage = 4;
          // });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewArticle()),
          );

        },
        child: _selectPage == 4?const Icon(Icons.close, size: 28,color: Colors.white,): const Icon(Icons.add, size: 28,color: Colors.white,),
      ),
    );
  }
}
