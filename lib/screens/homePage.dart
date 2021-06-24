import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: HexColor('#0b85ff'),
                            size: 12.0,
                          ),
                          Text(
                            'Taifa, Kristo Asafo',
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: HexColor("#2c2c2c"),
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Container(
                        width: screenWidth * 0.7,
                        child: Text(
                          'Plan your next adventure here',
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: HexColor("#2c2c2c"),
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    maxRadius: 35.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.08,
                  width: screenWidth * 0.78,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: HexColor("#0b85ff"),
                        size: 18.0,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.01,
                      ),
                      labelText: 'Where are you going next?',
                      labelStyle: TextStyle(
                        color: HexColor("#aeaeae"),
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
                      // filled: true,
                      // fillColor: HexColor("#eaeaea"),
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: HexColor("#2c2c2c"),
                    //   ),
                    // ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                  color: HexColor('#0b85ff'),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.2,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/proxy/DtLNoDJm-i4MSo5J2q2sL8K6AG8iLLSfn0_SW_G0JK3K_og39UujOb_l-QVn6Jb2PJmVwcfaxyIH-a9jwQG5EtyhsQ'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  height: screenHeight * 0.2,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, HexColor("#B54351")],
                      // colors: [
                      //   HexColor("#B54351"),
                      //   Colors.transparent,
                      //   Colors.transparent,
                      //   HexColor("#B54351"),
                      // ],
                      // stops: [0.0, 0.4, 0.6, 1],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.14,
                  left: screenWidth * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Hotels',
                        style: GoogleFonts.josefinSans(
                          textStyle: TextStyle(
                            color: HexColor("#ffffff"),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      CircleAvatar(
                        maxRadius: 14.0,
                        backgroundColor: Colors.white,
                        child: Text(
                          '92',
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: HexColor("#2c2c2c"),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
