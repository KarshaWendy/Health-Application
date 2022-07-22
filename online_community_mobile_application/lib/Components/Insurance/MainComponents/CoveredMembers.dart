// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../SubComponents/CoveredMembersInsured.dart';

class CoveredMembers extends StatefulWidget {
  @override
  _CoveredMembersState createState() => _CoveredMembersState();
}

class _CoveredMembersState extends State<CoveredMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
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
                    padding: const EdgeInsets.fromLTRB(25, 5, 5, 5),
                    child: Text(
                      "COVERED MEMBERS",
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
                  CoveredMembersInsured(),
                ])));
  }
}
