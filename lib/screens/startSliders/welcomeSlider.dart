import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeSlider extends StatefulWidget {
  // const WelcomeSlider({ Key? key }) : super(key: key);

  @override
  _WelcomeSliderState createState() => _WelcomeSliderState();
}

class _WelcomeSliderState extends State<WelcomeSlider> {
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
                //     "https://images.unsplash.com/photo-1603638725135-928baf863eff?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3BzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                image: AssetImage('assets/welcome-img.jpg'),
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
                'Hi Hannah! Welcome to,',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                'Trippin',
                style: GoogleFonts.lobster(
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
                'Connect with fellow travellers to become a part of a family!',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 22.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.08,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mainPage');
                  },
                  child: Text(
                    'TURN ON GPS',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#ffffff"),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    elevation: 3.0,
                    backgroundColor: HexColor("#0b85ff"),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
