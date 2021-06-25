import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:trippin_app/screens/homePage.dart';
import 'package:trippin_app/screens/startSliders/sliderOne.dart';
import 'package:trippin_app/screens/startSliders/sliderThree.dart';
import 'package:trippin_app/screens/startSliders/sliderTwo.dart';

class SliderContainer extends StatefulWidget {
  // const SliderContainer({ Key? key }) : super(key: key);

  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
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
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: [
        SliderOne(),
        SliderTwo(),
        SliderThree(),
      ],
      onPageChanged: (page) {
        setState(() {
          _selectedIndex = page;
        });
      },
    );
  }
}
