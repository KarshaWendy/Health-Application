// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../SubComponents/Balance.dart';

class MemberBalance extends StatefulWidget {
  @override
  _MemberBalanceState createState() => _MemberBalanceState();
}

class _MemberBalanceState extends State<MemberBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
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
                    padding: const EdgeInsets.fromLTRB(25, 5, 10, 5),
                    child: Text(
                      "MEMBER BALANCE",
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
                  Balance(),
                ]));
  }
}
