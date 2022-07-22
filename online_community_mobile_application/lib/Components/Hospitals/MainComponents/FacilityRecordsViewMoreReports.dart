// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/Services.dart';

import '../SubComponents/AboutUs.dart';
import '../SubComponents/ShortcutsFacilities.dart';

class FacilityRecordsViewMoreReport extends StatefulWidget {
  @override
  _FacilityRecordsViewMoreReportState createState() =>
      _FacilityRecordsViewMoreReportState();
}

class _FacilityRecordsViewMoreReportState
    extends State<FacilityRecordsViewMoreReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              child: Image.asset('assets/icons/back.png'),
                              height: 60,
                              width: 60)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text("The Aga Khan Hospital",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Color(0xFF2BB9AD),
                          ),
                        ),
                  ),
                ],
              ),
              ShortcutsFacilities(),
              AboutUs(),
              Services()
            ])));
  }
}
