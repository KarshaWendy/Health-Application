// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, non_constant_identifier_names, unused_local_variable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/UtilityForm.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/UtilizationDetails.dart';


class UtilitiesCard extends StatefulWidget {
  @override
  _UtilitiesCardState createState() => _UtilitiesCardState();
}

class _UtilitiesCardState extends State<UtilitiesCard> {
  @override
  Widget build(BuildContext context) {
    List<String> Date = [
      'Outpatient Dental',
      'Outpatient Dental',
      'Outpatient Dental'
    ];
    List<String> Hospital = [
      '24th Thur - 5th Wed 2022',
      '24th Thur - 5th Wed 2022',
      '24th Thur - 5th Wed 2022'
    ];
    return Container(
      child: Card(
          child: Column(
        children: [
          UtilityForm(),
          Padding(
                    padding: const EdgeInsets.all(2),
                    child: SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                        child: const Text(
                          "Search",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.of(context, rootNavigator: true)
                          //     .pushNamed('/AppointmentPage');
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF2BB9AD)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            ))),
                      ),
                    ),
                  ),
                  Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(
              "Mama Lucy Kibaki Hospital",
              style: TextStyle(
                  color: Color(0xFF2BB9AD),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
                  UtilizationDetails()
          // Card(
          //     child: Column(
          //   children: [
          //     for (var i = 0; i < 3; i++)
          //       Card(
          //         elevation: 3,
          //         shape: RoundedRectangleBorder(  
          //   borderRadius: BorderRadius.circular(45.0),  
          // ),
          //         color: Color(0xFFF8F8F8),
          //         child: Row(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          //               child: CircleAvatar(
          //                 radius: 25,
          //                 backgroundColor: Color(0xFF2BB9AD),
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(1), // Border radius
          //                   child: ClipOval(
          //                       child: Image.asset(
          //                           'assets/icons/utility-rate.png')),
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               child: Container(
          //                 color: Color(0xFFF8F8F8),
          //                 child: ListTile(
          //                   tileColor: Colors.white,
          //                   title: Padding(
          //                     padding: const EdgeInsets.fromLTRB(15, 8, 7, 8),
          //                     child: Text(
          //                       Date[i],
          //                       style: TextStyle(
          //                           fontStyle: FontStyle.normal,
          //                           fontSize: 16,
          //                           color: Colors.black),
          //                     ),
          //                   ),
          //                   subtitle: Padding(
          //                     padding: const EdgeInsets.fromLTRB(15, 8, 7, 8),
          //                     child: Text(Hospital[i],
          //                         style: TextStyle(
          //                             fontStyle: FontStyle.normal,
          //                             fontSize: 14,
          //                             color: Color(0xFF979797))),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             InkWell(
          //               onTap: () => Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: (context) =>
          //                           Utilities())),
          //               child: SizedBox(
          //                 child: Padding(
          //                   padding: const EdgeInsets.fromLTRB(0, 5, 20, 10),
          //                   child: Text(
          //                     'Details..',
          //                     style: TextStyle(
          //                       fontSize: 17,
          //                       fontWeight: FontWeight.w800,
          //                       color: Color(0xFF2BB9AD),
          //                     ),
          //                     textAlign: TextAlign.center,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //
        ],
      )),
    );
  }
}
