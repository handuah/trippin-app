import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookmark extends StatefulWidget {
  // const Bookmark({ Key? key }) : super(key: key);

  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.yellow,
            child: Stack(
              children: [
                Image(
                  image: NetworkImage(
                      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/07/1c/91.jpg'),
                  fit: BoxFit.fitHeight,
                  height: screenHeight / 1.8,
                  width: screenWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.07,
                    left: screenWidth * 0.03,
                    right: screenWidth * 0.03,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search_outlined,
                              color: HexColor("#0b85ff"),
                              size: 30.0,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth * 0.3,
                            child: Text(
                              'Sajek Valley, Dighinala',
                              style: GoogleFonts.josefinSans(
                                textStyle: TextStyle(
                                  color: HexColor("#ffffff"),
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.14,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: HexColor('#0b85ff'),
                                      size: 16.0,
                                    ),
                                    Text(
                                      '5.0',
                                      style: GoogleFonts.josefinSans(
                                        textStyle: TextStyle(
                                          color: HexColor("#0b85ff"),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.04,
                              ),
                              Text(
                                '430 reviews',
                                style: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                    color: HexColor("#ffffff"),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 2,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Container(
                height: screenHeight / 1,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.06,
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
                                'Overview',
                                style: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                    // color: HexColor("#ffffff"),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'Ratings & Reviews',
                                style: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                    // color: HexColor("#ffffff"),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2.09,
            left: screenWidth / 1.2,
            child: Icon(
              Icons.bookmark,
              size: 40.0,
              color: HexColor('0b85ff'),
            ),
          ),
        ],
      ),
    );
  }
}
