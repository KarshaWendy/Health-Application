// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, non_constant_identifier_names, unused_local_variable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/SelfDetails.dart';

class SelfCard extends StatefulWidget {
  @override
  _SelfCardState createState() => _SelfCardState();
}

class _SelfCardState extends State<SelfCard> {
  @override
  Widget build(BuildContext context) {
    List<String> Date = [
      'UAP Insurance',
      'UAP Insurance',
      'UAP Insurance'
    ];
    List<String> Hospital = [
      'Active',
      'Active',
      'Active'
    ];
    return Container(
      child: Card(
          child: Column(
        children: [
          Card(
              child: Column(
            children: [
              for (var i = 0; i < 3; i++)
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(45.0),  
          ),
                  color: Color(0xFFF8F8F8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Color(0xFF2BB9AD),
                          child: Padding(
                            padding: const EdgeInsets.all(1), // Border radius
                            child: ClipOval(
                                child: Image.asset(
                                    'assets/icons/information.png')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color(0xFFF8F8F8),
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 8, 40, 8),
                              child: Text(
                                Date[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 8, 40, 8),
                              child: Text(Hospital[i],
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xFF979797))),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SelfDetails())),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 25, 10),
                            child: Text(
                              'Details..',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF2BB9AD),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )),
        ],
      )),
    );
  }
}
