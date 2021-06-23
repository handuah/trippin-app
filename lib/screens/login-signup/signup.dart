import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.01,
            right: screenWidth * 0.01,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.01, top: screenHeight * 0.07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: CircleAvatar(
                  maxRadius: 50.0,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.08,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: HexColor("#2c2c2c"),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            color: HexColor("#2c2c2c"),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade200,
                              width: 0.01,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: HexColor("#eaeaea"),
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: HexColor("#2c2c2c"),
                        //   ),
                        // ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: HexColor("#2c2c2c"),
                          ),
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            color: HexColor("#2c2c2c"),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.01,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: HexColor("#eaeaea"),
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: HexColor("#2c2c2c"),
                        //   ),
                        // ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_open_rounded,
                            color: HexColor("#2c2c2c"),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: HexColor("#2c2c2c"),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.01,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: HexColor("#eaeaea"),
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: HexColor("#2c2c2c"),
                        //   ),
                        // ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: HexColor("#2c2c2c"),
                          ),
                          hintText: 'Confirmed Password',
                          hintStyle: TextStyle(
                            color: HexColor("#2c2c2c"),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.01,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: HexColor("#eaeaea"),
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: HexColor("#2c2c2c"),
                        //   ),
                        // ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              SizedBox(
                width: screenWidth * 0.94,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'REGISTER',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#ffffff"),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    elevation: 2.0,
                    backgroundColor: HexColor("#0b85ff"),
                    padding: EdgeInsets.only(
                        right: screenWidth * 0.004,
                        top: screenHeight * 0.024,
                        bottom: screenHeight * 0.024,
                        left: screenWidth * 0.004),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: HexColor("#0b85ff"),
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
            ],
          ),
        ),
      ),
    );
  }
}
