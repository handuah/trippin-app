import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderTwo extends StatefulWidget {
  // const SliderTwo({ Key? key }) : super(key: key);

  @override
  _SliderTwoState createState() => _SliderTwoState();
}

class _SliderTwoState extends State<SliderTwo> {
  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 7),
    //     () => Navigator.pushNamed(context, '/sliderThree'));

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                // image: NetworkImage(
                //     "https://imgk.timesnownews.com/story/Dream_about_being_in_a_desert.jpg?tr=w-1200,h-900"),
                image: AssetImage('assets/explore-img.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black87],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: HexColor("#0b85ff"),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Text(
                'Using genuine local knowledge of terrain',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: screenHeight * 0.016,
                    width: screenWidth * 0.03,
                    decoration: BoxDecoration(
                      color: HexColor("#ffffff"),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.01,
                  ),
                  Container(
                    height: screenHeight * 0.016,
                    width: screenWidth * 0.03,
                    decoration: BoxDecoration(
                      color: HexColor("#0b85ff"),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.01,
                  ),
                  Container(
                    height: screenHeight * 0.016,
                    width: screenWidth * 0.03,
                    decoration: BoxDecoration(
                      color: HexColor("#ffffff"),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: HexColor("#ffffff"),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
