// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, non_constant_identifier_names, unused_local_variable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InPatientDetails.dart';


class InpatientCard extends StatefulWidget {
  @override
  _InpatientCardState createState() => _InpatientCardState();
}

class _InpatientCardState extends State<InpatientCard> {
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
         Padding(
              padding: const EdgeInsets.fromLTRB(2, 20, 150, 5),
              child: Text("Inpatient Benefits",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3,
          //         shape: RoundedRectangleBorder(  
          //   borderRadius: BorderRadius.circular(45.0),  
          // ),
                  color: Color(0xFFF8F8F8),
              child: Column(
            children: [
              for (var i = 0; i < 3; i++)
                Column(children: [
                   Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xFF2BB9AD),
                          child: Padding(
                            padding: const EdgeInsets.all(1), // Border radius
                            child: ClipOval(
                                child: Image.asset(
                                    'assets/icons/medical.png')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color(0xFFF8F8F8),
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text(
                                Date[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                                    InpatientDetails())),
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
            ])
            ],
          )),
        ),
        Card(
            elevation: 3,
              color: Color(0xFFF8F8F8),
              child: InkWell(
                // onTap: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => FacilityRecordsReportPage())),
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
            )
          ],
        ),
      ),
    );
  }
}
