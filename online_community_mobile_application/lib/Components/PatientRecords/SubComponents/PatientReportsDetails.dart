// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../Views/PatientRecordsViews/PatientRecordsReportViewMorePage.dart';


class PatientReportsDetails extends StatefulWidget {
  @override
  _PatientReportsDetailsState createState() => _PatientReportsDetailsState();
}

class _PatientReportsDetailsState extends State<PatientReportsDetails> {
  @override
  Widget build(BuildContext context) {
  
    List<String> Date = [
      '13 Sun - 03 March - 2022',
      '25 Fri - 02 Feb - 2022',
      '31 Mon - 01 Jan - 2022',
      '30 Thur - 04 April - 2022',
      '21 Mon - 03 March  - 2022',
      '11 Tue - 04 April - 2022'
    ];
    List<String> Hospital = [
      'The Karen Hospital',
      'The Nairobi Hospital',
      'The Aga Khan Hospital',
      'The Mater Hospital',
      'The Nairobi Hospital',
      'MP Shah Hospital'
    ];
    return SingleChildScrollView(
        child: Column(
      children: [
        Card(
          elevation: 3,
                  shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(10.0),  
          ),
                  color: Color(0xFFF8F8F8),
          
          
            child: Column(
          children: [
            for (var i = 0; i < 5; i++)
              Card(
                elevation: 3,
                  shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(25.0),  
          ),
                child: Row(
                  children: [
                     Padding(
                            padding: const EdgeInsets.fromLTRB(15, 2, 2, 2),
                       child: CircleAvatar(
                         radius: 25,
                         backgroundColor: Color(0xFF2BB9AD),
                         child: Padding(
                           padding: const EdgeInsets.all(2), // Border radius
                           child: ClipOval(
                               child: Image.asset('assets/icons/patientrecord.png')),
                         ),
                       ),
                     ),

                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: ListTile(
                          tileColor: Colors.white,
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                            child: Text(
                              Date[i],
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(Hospital[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 91, 91))),
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
                          padding: const EdgeInsets.all(8.0),
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
        )
        )
      ],
    ));
  }
}
