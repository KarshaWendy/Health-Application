// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    List<String> subject = ['Heart Cancer Center','Princess Zahra Pavilion','Pathology and Lab Medicine','Radiology and Image Centers'];
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        child: Column(
          children: [
            Card(
              color: Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  for (var i = 0; i < 4; i++)
                    Row(
                      children: [
                        Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5,5,5),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor:  (Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child: Image.asset('assets/icons/healthcare.png')),
                          ),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2,5,2,15),
                          child: Text(
                            subject[i],
                            style: TextStyle(
                                color: Color(0xFF021F68),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
