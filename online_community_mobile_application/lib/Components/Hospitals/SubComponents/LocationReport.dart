// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../Views/HospitalsViews/FacilityRecordsViewMoreReportPage.dart';

class LocationReport extends StatefulWidget {
  @override
  _LocationReportState createState() => _LocationReportState();
}

class _LocationReportState extends State<LocationReport> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(2),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Results",
            style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF2BB9AD),),
            textAlign: TextAlign.left,
          ),
        ),
      ),
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
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 150,5),
              child: Text("The Nairobi Hospital",style: TextStyle(
                color: Color(0xFF021F68),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10,10,10),
              child: Row(children: [
              Icon(Icons.pin_drop_outlined,size: 30,color: Colors.red,),
              Spacer(flex: 1,),
              Text(" 5 km away...",style: TextStyle(
                color: Color(0xFF464848),
                fontSize: 18,
                fontWeight: FontWeight.w600),),
              Spacer(flex: 5,),
              TextButton(
              child: Text("See more...",style: TextStyle(fontSize:20),),
              style: TextButton.styleFrom(
               primary: Color(0xFF021F68),
          ),
              onPressed:() {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FacilityRecordsViewMoreReportPage()),
                      );
                   },
          )
              ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0, 12, 150,5),
               child: Text("The Mater Hospital",style: TextStyle(
               color: Color(0xFF021F68),
                fontSize: 20,
                fontWeight: FontWeight.w600),),
             ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10,10,10),
              child: Row(children: [
              Icon(Icons.pin_drop_outlined,size: 30,color: Colors.red,),
              Spacer(flex: 1,),
              Text(" 7 km away...",style: TextStyle(
                color: Color(0xFF464848),
                fontSize: 18,
                fontWeight: FontWeight.w600),),
              Spacer(flex: 5,),
              TextButton(
              child: Text("See more...",style: TextStyle(fontSize:20),),
              style: TextButton.styleFrom(
               primary: Color(0xFF021F68),
          ),
              onPressed:() {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FacilityRecordsViewMoreReportPage()),
                      );
                   },
          )
              ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0, 12, 130,5),
               child: Text("The Aga Khan Hospital",style: TextStyle(
               color: Color(0xFF021F68),
                fontSize: 20,
                fontWeight: FontWeight.w600),),
             ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10,10,10),
              child: Row(children: [
              Icon(Icons.pin_drop_outlined,size: 30,color: Colors.red,),
              Spacer(flex: 1,),
              Text(" 15 km away...",style: TextStyle(
                color: Color(0xFF464848),
                fontSize: 18,
                fontWeight: FontWeight.w600),),
              Spacer(flex: 5,),
              TextButton(
              child: Text("See more...",style: TextStyle(fontSize:20),),
              style: TextButton.styleFrom(
               primary: Color(0xFF021F68),
          ),
              onPressed:() {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FacilityRecordsViewMoreReportPage()),
                      );
                   },
          )
              ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
        elevation: 2,
              child: InkWell(
                onTap: () {
                  //  Navigator.push(
                  //                         context,
                  //                         MaterialPageRoute(
                  //                             builder: (context) =>
                  //                                 AboutUsViewMore()),
                  //                       );
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
          ),
            )
            ]
        ),
      ),
    ]);
  }
}
