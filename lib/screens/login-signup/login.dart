import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  // const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Trippin',
                style: GoogleFonts.lobster(
                  textStyle: TextStyle(
                    color: HexColor("#0b85ff"),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.16,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: HexColor("#2c2c2c"),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#2c2c2c"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: HexColor("#2c2c2c"),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: HexColor("#2c2c2c"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.04,
                        ),
                        SizedBox(
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.2,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Ok',
                              style: GoogleFonts.josefinSans(
                                textStyle: TextStyle(
                                  color: HexColor("#ffffff"),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: HexColor("#0b85ff"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgotPassword');
                          },
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: HexColor("#2c2c2c"),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: HexColor("#ffffff"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.16,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  'Create a New Account',
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      color: HexColor("#2c2c2c"),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: HexColor("#ffffff"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
