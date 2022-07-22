// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';

import '../SubComponents/AppointmentForm.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    void directToHospitalSearchPage() => Navigator.pop(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            directToHospitalSearchPage();
                          },
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Image.asset('assets/icons/back.png'),
                                  height: 60,
                                  width: 60)),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 4,
                  ),
                  AppointmentForm(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
