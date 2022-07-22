// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OutpatientChronicTreatment extends StatefulWidget {
  const OutpatientChronicTreatment({Key? key}) : super(key: key);

  @override
  _OutpatientChronicTreatmentState createState() =>
      _OutpatientChronicTreatmentState();
}

class _OutpatientChronicTreatmentState
    extends State<OutpatientChronicTreatment> {
  @override
  Widget build(BuildContext context) {
     List<String> subject = ['Name:','Member No:','Allocation:','Expenses:',  'Balance:'];
    List<String> feedback = ['Hezrah Martinez','008','10,000 Ksh', '2,575 ksh', '7,425 Ksh'];
    return Column(
      children: [
        const Padding(
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "OUTPATIENT CHRONIC TREATMENT",
                    style: TextStyle(
                        color: Color(0xFF2BB9AD),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Card(
                elevation: 2,
                color: const Color(0xFFF9FDFF),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
                child: Column(
                  children: [
                    for (var i = 0; i < 5; i++)
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: Text(
                              subject[i],
                              style: const TextStyle(
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
                                style: const TextStyle(
                                  color: Color(0xFF474747),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
      ],
    );
  }
}
