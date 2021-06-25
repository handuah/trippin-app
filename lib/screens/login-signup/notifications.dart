import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  // const Notifications({ Key? key }) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(
          left: screenWidth * 0.02,
          right: screenWidth * 0.04,
          top: screenHeight * 0.07,
        ),
        children: [
          NotificationList('https://wallpaper.dog/large/17043170.jpg',
              'Hannah Duah', 'Just arrived', '5:00am'),
          NotificationList('https://wallpaperaccess.com/full/637905.jpg',
              'Joyce Agyekum', 'Leaving there soon', '5:00pm'),
          NotificationList(
              'https://st1.bollywoodlife.com/wp-content/uploads/2021/04/BTS-Jungkook.png',
              'Hannah Darku',
              'Where are you?',
              '5:00am'),
          NotificationList(
              'https://fsa.zobj.net/crop.php?r=A7MgrDz7j9L4kgs2S-aLAZ9DPMmSxaGfwcENiraw7oBtVzbSkAoHjgJZ_tcB2BVwhLzPxEatUeRmlGnPISaEn8mQi8HXleIxlTjboqschbXhGg1O66ERNGbWn_I_ev7Zjv_eRgEmu5Z1fecn',
              'Kwadwo Duah',
              'JLeaving the office',
              '5:00am'),
          NotificationList('https://pbs.twimg.com/media/EkRyuQ7UYAMH1yp.jpg',
              'Francis Gyamerah', 'Chale, how far?', '5:00am'),
          NotificationList(
              'https://i.pinimg.com/originals/0e/54/8f/0e548f5ab74a593724e002a2aed85df0.jpg',
              'Lyndon Strange',
              'Here with the dreams',
              '5:00am'),
          NotificationList(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsI60EP-H4qxuvyheHUjtgMB8z_mHnPx3unQ&usqp=CAU',
              'Joyce Agyekum',
              'Leaving there soon',
              '5:00pm'),
          NotificationList(
              'https://kenyabtsarmy.files.wordpress.com/2020/11/bts-jungkook-interview-0a.jpg?w=564',
              'Hannah Darku',
              'Where are you?',
              '5:00am'),
          NotificationList(
              'https://w7w5t4b3.rocketcdn.me/wp-content/uploads/2020/09/ENHYPEN-member-Jungwon.jpeg',
              'Kwadwo Duah',
              'JLeaving the office',
              '5:00am'),
          NotificationList(
              'https://i0.wp.com/kstationtv.com/wp-content/uploads/2020/11/ENHYPEN-NIKI-2.jpg?fit=2007%2C1338&ssl=1',
              'Hannah Duah',
              'Just arrived',
              '5:00am'),
          NotificationList(
              'https://dbkpop.com/wp-content/uploads/2021/05/aespa_next_level_teaser_karina_1.jpg',
              'Kwadwo Duah',
              'JLeaving the office',
              '5:00am'),
          NotificationList(
              'https://bollytrendz.com/wp-content/uploads/2021/01/IMG_20210102_003609-907x1024.jpg',
              'Francis Gyamerah',
              'Chale, how far?',
              '5:00am'),
          NotificationList(
              'https://i.pinimg.com/originals/c0/20/a2/c020a23103c4801b6fc9789167ed3566.jpg',
              'Lyndon Strange',
              'Here with the dreams',
              '5:00am'),
        ],
      ),
    );
  }
}

class NotificationList extends StatefulWidget {
  // const NotificationList({ Key? key }) : super(key: key);
  final String avatarImage;
  final String userName;
  final String userMsg;
  final String msgTime;

  const NotificationList(
      this.avatarImage, this.userName, this.userMsg, this.msgTime);

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            // 'https://wallpaper.dog/large/17043170.jpg',
            widget.avatarImage,
            scale: 1.0),
        maxRadius: 24.0,
      ),
      title: Text(
        // 'Hannah Duah',
        widget.userName,
        style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
            color: HexColor("#2c2c2c"),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: Text(
        // 'Started following you',
        widget.userMsg,
        style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
            color: HexColor("#313131"),
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      trailing: Text(
        // '5:00am',
        widget.msgTime,
        style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
            color: HexColor("#313131"),
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
