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
                        ListView(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.03,
                          ),
                          children: [
                            HotelCards(
                              'https://2.bp.blogspot.com/-iKHBpDMNrAI/W6jQg6s6CqI/AAAAAAAAKXg/vytw0HOa-gYDYHjdrRMNbxvIGhAgozm_wCLcBGAs/s1600/RP-Kempinski-Photo.jpg',
                              'Kempinski Hotel',
                              "Ghana's Premier Hotel",
                              '2.0km away from You',
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            HotelCards(
                              'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/itemimages/38/61/3861746_v3.jpeg',
                              'Airport View Hotel',
                              "Luxury and Pride",
                              '5.0km away from You',
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            HotelCards(
                              'https://lh3.googleusercontent.com/proxy/bB1TZblop8LAgbqrZjddMvnsu2dlaNYvRqUTfyl0qPqmFufLdj7ga8PF4TyJIQsbn7uPtTTZ-KXQU31DDdJYIhFv4I0EtZ8W7hTukZ-_EVYRPxy2rZ431lyoK-jADmLH',
                              'Oak Plaza Hotel',
                              "The Pride of Spintex",
                              '15.0km away from You',
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            HotelCards(
                              'https://cdn.ghanaweb.com/hotels/161900713e16f3332691c163c0e9f614bth.jpeg',
                              'Novotel Hotel',
                              "Right in the middle of Accra",
                              '1.0km away from You',
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            HotelCards(
                              'https://res.cloudinary.com/estate-intel/images/f_auto,q_auto/w_609,h_352/v1620386034/wp_assets/Villagio-Vista/Villagio-Vista.jpg',
                              'Villagio Residences',
                              "Luxury and Class",
                              '25.0km away from You',
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            HotelCards(
                              'https://viewghana.com/wp-content/uploads/2021/02/Safari_Valley_Resort_Abrui-1-1024x669.jpg',
                              'Safari Valley Resort',
                              "Luxury and calm",
                              '50.0km away from You',
                            ),
                          ],
                        ),
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

// HOTEL CARDS
class HotelCards extends StatefulWidget {
  // const HotelCards({ Key? key }) : super(key: key);
  final String hotelImgPath;
  final String hotelName;
  final String hotelDesc;
  final String hotelDistance;

  const HotelCards(
    this.hotelImgPath,
    this.hotelName,
    this.hotelDesc,
    this.hotelDistance,
  );

  @override
  _HotelCardsState createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.3,
          width: screenWidth * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red,
            image: DecorationImage(
              image: NetworkImage(
                widget.hotelImgPath,
                // 'https://2.bp.blogspot.com/-iKHBpDMNrAI/W6jQg6s6CqI/AAAAAAAAKXg/vytw0HOa-gYDYHjdrRMNbxvIGhAgozm_wCLcBGAs/s1600/RP-Kempinski-Photo.jpg',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.06,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.hotelName,
              // 'Kempinski Hotel',
              style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
                  // color: HexColor("#ffffff"),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              widget.hotelDesc,
              // 'The Best Hotel in Ghana',
              style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
                  // color: HexColor("#ffffff"),
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              widget.hotelDistance,
              // '2.0 km away from You',
              style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
                  // color: HexColor("#ffffff"),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: HexColor('#0b85ff'),
                ),
                Icon(
                  Icons.star,
                  color: HexColor('#0b85ff'),
                ),
                Icon(
                  Icons.star,
                  color: HexColor('#0b85ff'),
                ),
                Icon(
                  Icons.star,
                  color: HexColor('#0b85ff'),
                ),
                Icon(
                  Icons.star_half,
                  color: HexColor('#0b85ff'),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 0.04,
                  width: screenWidth * 0.24,
                  // color: Colors.pink,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        left: screenWidth * 0.01,
                        child: CircleAvatar(
                          maxRadius: 14.0,
                          backgroundColor: Colors.blue,
                          backgroundImage: NetworkImage(
                              // widget.url1,
                              // ),
                              'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg'),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.05,
                        child: CircleAvatar(
                          maxRadius: 14.0,
                          backgroundColor: Colors.yellow,
                          backgroundImage: NetworkImage(
                            // widget.url2,
                            'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.09,
                        child: CircleAvatar(
                          maxRadius: 14.0,
                          backgroundColor: Colors.purple,
                          backgroundImage: NetworkImage(
                            // widget.url3,
                            'https://lh3.googleusercontent.com/E7Z8EvG2-1_KMXZ7K0EroBblqAG_0DjJiW8Vh6jyD6QOmlyOlOdMoT7MZDue9sfR2pxzWtOcGUqQGNfzWlSPe4adrLEXYStL-_gToV0R46ZMu0k=w960-rj-nu-e365',
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.13,
                        child: CircleAvatar(
                          maxRadius: 14.0,
                          backgroundColor: Colors.greenAccent,
                          backgroundImage: NetworkImage(
                            // widget.url4,
                            'https://i.pinimg.com/236x/47/73/5a/47735a2350c794f359d0163c37a219e2.jpg',
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.17,
                        child: CircleAvatar(
                          maxRadius: 14.0,
                          backgroundColor: Colors.yellowAccent,
                          backgroundImage: NetworkImage(
                            // widget.url5,
                            'https://v-phinf.pstatic.net//20210223_111/16140402498359qyQ6_JPEG/image.jpg?type=w1000',
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
      ],
    );
  }
}
