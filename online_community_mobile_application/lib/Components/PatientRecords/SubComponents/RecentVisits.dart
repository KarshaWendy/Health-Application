// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, non_constant_identifier_names, unused_local_variable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PatientRecordsReportViewMorePage.dart';

import '../../../Views/PatientRecordsViews/PatientRecordsReportPage.dart';

class RecentVisits extends StatefulWidget {
  @override
  _RecentVisitsState createState() => _RecentVisitsState();
}

class _RecentVisitsState extends State<RecentVisits> {
  @override
  Widget build(BuildContext context) {
    List<String> Date = [
      '24 Thu - 02 Feb - 2022',
      '24 Thu - 02 Feb - 2022',
      '24 Thu - 02 Feb - 2022'
    ];
    List<String> Hospital = [
      'The Agakhan Hospital',
      'The Nairobi Hospital',
      'The Mater Hospital'
    ];
    return Container(
      child: Column(
        children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15,2,2,2),
        child: Row(
          children: [
            SizedBox(
                height: 35.0,
                width: 35.0,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Color(0xFF2BB9AD),
                  child: Padding(
                    padding: const EdgeInsets.all(2), // Border radius
                    child: ClipOval(
                        child: Image.asset('assets/icons/healtrecord.png')),
                  ),
                )),
      Expanded(
              child: const ListTile(
                tileColor: Colors.white,
                title: Text(
                  'Health Records',
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
                subtitle: Text('My Recent Hospital Appointments',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xFF979797))),
              ),
            ),
      ],
        ),
      ),
      Divider(
        color: Colors.black,
        height: 4,
      ),
      Card(
      child: Column(
        children: [
      for (var i = 0; i < 3; i++)
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(  
        borderRadius: BorderRadius.circular(25.0),  
      ),
          color: Color(0xFFF8F8F8),
          child: Row(
            children: [
              Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFF2BB9AD),
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: Image.asset(
                                'assets/icons/medical_records.png')),
                      ),
                    ),
                  )]),
              Expanded(
                child: Container(
                  color: Color(0xFFF8F8F8),
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Date[i],
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                            PatientRecordsReportViewMorePage())),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 15, 10),
                    child: Text(
                      'Details ...',
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
      Card(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(143, 5, 143, 5),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PatientRecordsReportPage())),
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
        ),
      )
      ],
        
        ),
    );
  }
}
