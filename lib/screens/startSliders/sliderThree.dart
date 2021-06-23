import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderThree extends StatefulWidget {
  // const SliderThree({ Key? key }) : super(key: key);

  @override
  _SliderThreeState createState() => _SliderThreeState();
}

class _SliderThreeState extends State<SliderThree> {
  @override
  Widget build(BuildContext context) {
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
                //     "https://freedesignfile.com/upload/2016/11/Around-the-city-map-to-view-the-happy-tourists-HD-picture.jpg"),
                image: AssetImage('assets/connect.webp'),
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
                'Connect',
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
                'Connect with other travellers and become a part of a travelling community',
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
