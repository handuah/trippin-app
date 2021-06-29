import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  // const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.09,
            left: screenWidth * 0.03,
            right: screenWidth * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'My Profile',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  CircleAvatar(
                    maxRadius: 45.0,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsI60EP-H4qxuvyheHUjtgMB8z_mHnPx3unQ&usqp=CAU',
                      scale: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    'Hannah Duah',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    'handuah@gmail.com',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '250',
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: HexColor("#2c2c2c"),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            'Reviews',
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
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Container(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.004,
                        decoration: BoxDecoration(
                          color: HexColor('#aeaeae'),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '105k',
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: HexColor("#2c2c2c"),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            'Followers',
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
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Container(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.004,
                        decoration: BoxDecoration(
                          color: HexColor('#aeaeae'),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '500',
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: HexColor("#2c2c2c"),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            'Stories',
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
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit Profile',
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: HexColor("#2c2c2c"),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: HexColor('#EAEAEA'),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.04,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.06,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Settings',
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: HexColor("#2c2c2c"),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: HexColor('#EAEAEA'),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Divider(),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Container(
                    height: screenHeight * 0.40,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.00,
                          bottom: screenHeight * 0.01),
                      children: [
                        PostCards(
                          'https://www.top10about.com/wp-content/uploads/2020/01/Chittagong-Hill-Tracts.jpg',
                          'Enjoyment Moment',
                          'Sajed Bangladesh',
                          'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                          'https://i.pinimg.com/236x/47/73/5a/47735a2350c794f359d0163c37a219e2.jpg',
                          'https://v-phinf.pstatic.net//20210223_111/16140402498359qyQ6_JPEG/image.jpg?type=w1000',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                        ),
                        PostCards(
                          'https://img.traveltriangle.com/blog/wp-content/uploads/2018/12/cover-for-places-to-visit-in-ghana.jpg',
                          'Museleum Experience',
                          'Kwame Nkrumah Museleum',
                          'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                          'https://i.pinimg.com/236x/47/73/5a/47735a2350c794f359d0163c37a219e2.jpg',
                          'https://v-phinf.pstatic.net//20210223_111/16140402498359qyQ6_JPEG/image.jpg?type=w1000',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                        ),
                        PostCards(
                          'https://www.tripsavvy.com/thmb/K0xyjXQVw7vY1vaNwCDOpfuTvO8=/2107x1423/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-639553537-5926cb4e5f9b58595039548e.jpg',
                          'Cape Coast Castle',
                          'Cape Coast',
                          'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                          'https://i.pinimg.com/236x/47/73/5a/47735a2350c794f359d0163c37a219e2.jpg',
                          'https://v-phinf.pstatic.net//20210223_111/16140402498359qyQ6_JPEG/image.jpg?type=w1000',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                        ),
                        PostCards(
                          'https://www.flyingfourchette.com/wp-content/uploads/2013/11/Mole-Entrance.jpg',
                          'Mole National Park',
                          'Northern Region',
                          'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                          'https://i.pinimg.com/236x/47/73/5a/47735a2350c794f359d0163c37a219e2.jpg',
                          'https://v-phinf.pstatic.net//20210223_111/16140402498359qyQ6_JPEG/image.jpg?type=w1000',
                          'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
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

// Post Cards are Here...
class PostCards extends StatefulWidget {
  final String postImagePath;
  final String postTitle;
  final String postLocation;
  final String url1;
  final String url2;
  final String url3;
  final String url4;
  final String url5;
  // const PostCards({ Key? key }) : super(key: key);

  const PostCards(
    this.postImagePath,
    this.postTitle,
    this.postLocation,
    this.url1,
    this.url2,
    this.url3,
    this.url4,
    this.url5,
  );

  @override
  _PostCardsState createState() => _PostCardsState();
}

class _PostCardsState extends State<PostCards> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.36,
      decoration: BoxDecoration(
          // color: Colors.green,
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.postImagePath,
                  // 'https://www.top10about.com/wp-content/uploads/2020/01/Chittagong-Hill-Tracts.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.postTitle,
                    // 'Enjoyment Moment',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    widget.postLocation,
                    // 'Sajed, Bangladesh',
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: HexColor("#2c2c2c"),
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
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
                              widget.url1,
                            ),
                            // 'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg'),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * 0.05,
                          child: CircleAvatar(
                            maxRadius: 14.0,
                            backgroundColor: Colors.yellow,
                            backgroundImage: NetworkImage(
                              widget.url2,
                              // 'https://lh3.googleusercontent.com/08zUitpTR8-TDMyrNujzkiPm6Kxk90cWKI_0QTcZgHWZj36PHmxCuJ0PkDZIhqq2_joSihn3h0tDCEkk6LmXexBcBOQC6nA499DWwqFnB57LmCQ=w1200-h630-rj-pp-e365',
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * 0.09,
                          child: CircleAvatar(
                            maxRadius: 14.0,
                            backgroundColor: Colors.purple,
                            backgroundImage: NetworkImage(
                              widget.url3,
                              // 'https://lh3.googleusercontent.com/E7Z8EvG2-1_KMXZ7K0EroBblqAG_0DjJiW8Vh6jyD6QOmlyOlOdMoT7MZDue9sfR2pxzWtOcGUqQGNfzWlSPe4adrLEXYStL-_gToV0R46ZMu0k=w960-rj-nu-e365',
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * 0.13,
                          child: CircleAvatar(
                            maxRadius: 14.0,
                            backgroundColor: Colors.greenAccent,
                            backgroundImage: NetworkImage(widget.url4
                                // 'https://i.pinimg.com/236x/47/73/5a/47735a2350c794f359d0163c37a219e2.jpg',
                                ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * 0.17,
                          child: CircleAvatar(
                            maxRadius: 14.0,
                            backgroundColor: Colors.yellowAccent,
                            backgroundImage: NetworkImage(
                              widget.url5,
                              // 'https://v-phinf.pstatic.net//20210223_111/16140402498359qyQ6_JPEG/image.jpg?type=w1000',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: HexColor('#eaeaea'),
                    ),
                    onPressed: () {},
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
