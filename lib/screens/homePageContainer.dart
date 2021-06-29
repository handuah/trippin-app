import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trippin_app/screens/bookmark.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:trippin_app/screens/homePage.dart';
import 'package:trippin_app/screens/login-signup/notifications.dart';
import 'package:trippin_app/screens/profileScreen.dart';

class HomePageContainer extends StatefulWidget {
  // const HomePageContainer({ Key? key }) : super(key: key);

  @override
  _HomePageContainerState createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onTappedItem(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            40.0,
          ),
          topRight: Radius.circular(
            40.0,
          ),
        ),
        child: BottomNavigationBar(
          elevation: 4.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTappedItem,
          backgroundColor: HexColor("#F4F4F4"),
          items: [
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.home_outlined,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.home,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.bookmark_outline,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.bookmark,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.notification_important_outlined,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.notifications,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.person_outline,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.person,
                color: HexColor('#0b85ff'),
                size: 26.0,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          MainPage(),
          Bookmark(),
          Notifications(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
    );
  }
}
