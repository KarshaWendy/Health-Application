// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutUsDetails extends StatefulWidget {
  @override
  _AboutUsDetailsState createState() => _AboutUsDetailsState();
}

class _AboutUsDetailsState extends State<AboutUsDetails> {
  @override
  Widget build(BuildContext context) {
    List<String> subject = [
      'Proximity',
      'Working Hours',
      'Emergency Contact',
      'Direction'
    ];
    List<String> feedback = [
      '5Km away...',
      '24 hours...',
      '+254000000',
      'Limuru Road...'
    ];
    List imgList = [  
    Image.asset('assets/icons/positions.png'),
    Image.asset('assets/icons/sand-clock.png'),
    Image.asset('assets/icons/contact.png'),
    Image.asset('assets/icons/directions.png'),
    Image.asset('assets/icons/certificate.png'),
    Image.asset('assets/icons/user.png'),
    Image.asset('assets/icons/calendar.png'),
    Image.asset('assets/icons/news.png'),
    Image.asset('assets/icons/development.png'),
    Image.asset('assets/icons/calendar.png'),
    Image.asset('assets/icons/education.png'),
  ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Card(
            elevation: 2,
            color: Color(0xFFF8F8F8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < 4; i++)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor:  (Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child: imgList[i]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                          child: Text(
                            subject[i],
                            style: TextStyle(
                                color: Color(0xFF021F68),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 140,
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 10, 4, 10),
                            child: Text(
                              feedback[i],
                              style: TextStyle(
                                color: Color(0xFF474747),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
