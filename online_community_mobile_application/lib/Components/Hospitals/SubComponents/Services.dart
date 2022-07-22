// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import 'ServicesDetails.dart';
import 'ServicesViewMore.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() =>
      _ServicesState();
}

class _ServicesState   extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 2,2,2),
              child: SizedBox(
                    height: 35.0,
                    width: 35.0,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xFF2BB9AD),
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: Image.asset('assets/icons/house.png')),
                      ),
                    )),
            ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 150, 10),
        child: Text(
          "Services",
          style: TextStyle(
              color: Color(0xFF464848),
              fontSize: 25,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),]),
      Divider(
        color: Color(0xFF2BB9AD),
        height: 4,
        thickness: 2,
      ),
      ServiceDetails(),
      Card(
        elevation: 2,
            child: InkWell(
              onTap: () {
                Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ServicesViewMore()),
                                      );
              },
              child: Text(
                'View More',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF2BB9AD),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )]));
  }
}
