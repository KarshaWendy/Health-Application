// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names

import 'package:flutter/material.dart';

import '../../../Views/InsuranceViews/InsurancePage.dart';

class SecondInsurance extends StatefulWidget {
  const SecondInsurance({Key? key}) : super(key: key);

  @override
  _SecondInsuranceState createState() => _SecondInsuranceState();
}

class _SecondInsuranceState extends State<SecondInsurance> {
  @override
  Widget build(BuildContext context) {
     List<String> subject = ['Diana Agata', 'Member NO:'];
    List<String> feedback = ['ACTIVE', '04253784'];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 1900,
        child: Column(
          children: [
            Card(
              elevation: 2,
              color: Color(0xFFF9FDFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  for (var i = 0; i < 2; i++)
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Text(
                            subject[i],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              feedback[i],
                              style: TextStyle(
                                color: Color(0xFF474747),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(170,5, 5, 10),
                      child: ElevatedButton(
                        child: const Text(
                          "Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InsurancePage()),
                                  );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF2BB9AD),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
   }}