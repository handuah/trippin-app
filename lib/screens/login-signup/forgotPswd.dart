import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  // const ForgotPassword({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.066),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: screenWidth * 0.18,
                  ),
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                'Enter your email and we will send instructions on resetting it.',
                softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: HexColor("#2c2c2c"),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/forgotPassword');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: HexColor("#ffffff"),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  elevation: 2.0,
                  backgroundColor: HexColor("#0b85ff"),
                  padding: EdgeInsets.only(
                      right: screenWidth * 0.3,
                      top: screenHeight * 0.024,
                      bottom: screenHeight * 0.024,
                      left: screenWidth * 0.08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/forgotPassword');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'SEND',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: HexColor("#ffffff"),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  elevation: 2.0,
                  backgroundColor: HexColor("#0b85ff"),
                  padding: EdgeInsets.only(
                      right: screenWidth * 0.3,
                      top: screenHeight * 0.024,
                      bottom: screenHeight * 0.024,
                      left: screenWidth * 0.08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
