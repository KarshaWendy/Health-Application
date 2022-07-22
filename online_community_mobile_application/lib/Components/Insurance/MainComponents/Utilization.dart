// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../SubComponents/UtilitiesCard.dart';

class Utilization extends StatefulWidget {
  @override
  _UtilizationState createState() => _UtilizationState();
}

class _UtilizationState extends State<Utilization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Row(children: [
              Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2,2,2),
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
                padding: const EdgeInsets.fromLTRB(30,2,2,2),
                child: Text(
                  "UTILIZATION",
                  style: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),]),
              Divider(
                color: Color(0xFF2BB9AD),
                height: 4,
                thickness: 2,
              ),
              UtilitiesCard(),
            ])));
  }
}
