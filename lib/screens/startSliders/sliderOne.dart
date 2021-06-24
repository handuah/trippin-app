import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderOne extends StatefulWidget {
  // const SliderOne({ Key? key }) : super(key: key);

  @override
  _SliderOneState createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Timer(
    //     Duration(seconds: 7), () => Navigator.pushNamed(context, '/sliderTwo'));

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
                //     "https://www.treebo.com/blog/wp-content/uploads/2018/04/Night-Camping-in-Bangalore-.jpg"),
                image: AssetImage('assets/travel-img.jpg'),
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
                'Travel',
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
                'We curated for the adventurer with a budget',
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
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
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
