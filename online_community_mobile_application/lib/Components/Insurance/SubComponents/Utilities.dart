// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'UtilizationDetails.dart';

class Utilities extends StatefulWidget {
  @override
  _UtilitiesState createState() => _UtilitiesState();
}

class _UtilitiesState extends State<Utilities> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
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
                    padding: const EdgeInsets.fromLTRB(30, 40, 5, 2),
                    child: Text(
                      "UTILIZATION",
                      style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),]),
                  Divider(height: 2,color: Colors.grey,thickness: 2,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Text(
              "The Aga Khan Hospital",
              style: TextStyle(
                  color: Color(0xFF2BB9AD),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          UtilizationDetails()
        ]));
  }
}
