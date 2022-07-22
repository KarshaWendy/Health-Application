// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/FuneralCover.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientKidneyDialysis.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientMaternity.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientOncology.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientOpthamology.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientOrthopaedics.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientOverall.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientPsychiarty.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InpatientPysiotherapy.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutPatientOverall.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientAnteandPostNatal.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientChronicTreatment.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientDental.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientEvacuation.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientFrames.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientHearingAids.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientOptical.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientOrthopaedics.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/OutpatientPysiotherapy.dart';

class AllBalance extends StatefulWidget {
  @override
  _AllBalanceState createState() => _AllBalanceState();
}

class _AllBalanceState extends State<AllBalance> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
               Row(children: [
            Padding(
                    padding: const EdgeInsets.fromLTRB(2, 40, 5, 2),
                    child: InkWell(
                      onTap: () {
                      },
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                                child: Image.asset('assets/icons/back.png'),
                                height: 60,
                                width: 60),
                          )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(15, 40, 5, 2),
                    child: Text(
                      "MEMBER BALANCE",
                      style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),]),
                  Divider(height: 2,color: Colors.grey,thickness: 2,),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     child: Text(
            //       "All Balance",
            //       style: TextStyle(
            //           color: Color(0xFF2BB9AD),
            //           fontSize: 20,
            //           fontWeight: FontWeight.w600),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            // ),
              OutPatientOverall(),
              OutpatientChronicTreatment(),
              OutpatientAnteandPostNatal(),
              OutpatientDental(),
              OutpatientFrames(),
              OutpatientHearingAids(),
              OutpatientOptical(),
              OutpatientOrthopaedics(),
              OutpatientPysiotherapy(),
              OutpatientEvacuation(),
              FuneralCover(),
              InpatientKidneyDialysis(),
              InpatientMaternity(),
              InpatientOncology(),
              InpatientOpthamology(),
              InpatientOrthopaedics(),
              InpatientOverall(),
              InpatientPhysiotherapy(),
              InpatientPsychiatry()
            ],
          ),
        ),
      ),
    );
  }
}
