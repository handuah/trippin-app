import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelSearch extends StatefulWidget {
  // const HotelSearch({ Key? key }) : super(key: key);

  @override
  _HotelSearchState createState() => _HotelSearchState();
}

class _HotelSearchState extends State<HotelSearch> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.10,
                left: screenWidth * 0.04,
                right: screenWidth * 0.04,
                bottom: screenHeight * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: screenWidth * 0.2,
                  ),
                  Text(
                    'Search Hotels & Rooms',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TabBar(
                    labelColor: HexColor('#ffffff'),
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: HexColor('#0b85ff'),
                    ),
                    labelPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.01,
                    ),
                    tabs: [
                      Text(
                        'Search Hotels',
                        style: GoogleFonts.josefinSans(
                          textStyle: TextStyle(
                            // color: HexColor("#ffffff"),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Hotels Near You',
                        style: GoogleFonts.josefinSans(
                          textStyle: TextStyle(
                            // color: HexColor("#ffffff"),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: screenHeight * 0.8,
                    width: screenWidth,
                    child: TabBarView(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: screenHeight * 0.8,
                              width: screenWidth,
                              decoration: BoxDecoration(color: Colors.amber),
                              child: Stack(
                                children: [
                                  Container(
                                    height: screenHeight * 0.24,
                                    width: screenWidth,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://usercontent.one/wp/www.grassroottours.com/wp-content/uploads/2019/12/PHOTO-2019-11-26-16-37-06.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: screenHeight * 0.22,
                                    child: Material(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Container(
                                        height: screenHeight * 0.66,
                                        width: screenWidth,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: screenHeight * 0.03,
                                            horizontal: screenWidth * 0.02,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Search Hotels',
                                                        style: GoogleFonts
                                                            .josefinSans(
                                                          textStyle: TextStyle(
                                                            // color: HexColor("#ffffff"),
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            screenHeight * 0.01,
                                                      ),
                                                      Text(
                                                        'Find hotel as you need on demand',
                                                        style: GoogleFonts
                                                            .josefinSans(
                                                          textStyle: TextStyle(
                                                            // color: HexColor("#ffffff"),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons.directions,
                                                    size: 40.0,
                                                    color: HexColor('#0b85ff'),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: screenHeight * 0.02,
                                              ),
                                              Text(
                                                'City',
                                                style: GoogleFonts.josefinSans(
                                                  textStyle: TextStyle(
                                                    // color: HexColor("#ffffff"),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: screenHeight * 0.015,
                                              ),
                                              TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      HexColor('#eaeaea'),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 0.01,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: screenHeight * 0.020,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Arrival',
                                                        style: GoogleFonts
                                                            .josefinSans(
                                                          textStyle: TextStyle(
                                                            // color: HexColor("#ffffff"),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: screenHeight *
                                                            0.015,
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.4,
                                                        child: TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor: HexColor(
                                                                '#eaeaea'),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                                width: 0.01,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Departure',
                                                        style: GoogleFonts
                                                            .josefinSans(
                                                          textStyle: TextStyle(
                                                            // color: HexColor("#ffffff"),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: screenHeight *
                                                            0.015,
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.4,
                                                        child: TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor: HexColor(
                                                                '#eaeaea'),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                                width: 0.01,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              // SizedBox(
                                              //   height: screenHeight * 0.015,
                                              // ),
                                              // TextFormField(
                                              //   keyboardType: TextInputType.text,
                                              //   decoration: InputDecoration(
                                              //     filled: true,
                                              //     fillColor: HexColor('#eaeaea'),
                                              //     border: OutlineInputBorder(
                                              //       borderSide: BorderSide(
                                              //         color: Colors.white,
                                              //         width: 0.01,
                                              //       ),
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //               10.0),
                                              //     ),
                                              //   ),
                                              // ),
                                              SizedBox(
                                                height: screenHeight * 0.020,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Star',
                                                        style: GoogleFonts
                                                            .josefinSans(
                                                          textStyle: TextStyle(
                                                            // color: HexColor("#ffffff"),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: screenHeight *
                                                            0.015,
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.4,
                                                        child: TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor: HexColor(
                                                                '#eaeaea'),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                                width: 0.01,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Room',
                                                        style: GoogleFonts
                                                            .josefinSans(
                                                          textStyle: TextStyle(
                                                            // color: HexColor("#ffffff"),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: screenHeight *
                                                            0.015,
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screenWidth * 0.4,
                                                        child: TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor: HexColor(
                                                                '#eaeaea'),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                                width: 0.01,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: screenHeight * 0.015,
                                              ),
                                              SizedBox(
                                                height: screenHeight * 0.07,
                                                width: screenWidth,
                                                child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'SEARCH',
                                                    style:
                                                        GoogleFonts.josefinSans(
                                                      textStyle: TextStyle(
                                                        color:
                                                            HexColor("#ffffff"),
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        letterSpacing: 1.2,
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    backgroundColor:
                                                        HexColor("0b85ff"),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('hERE2'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
