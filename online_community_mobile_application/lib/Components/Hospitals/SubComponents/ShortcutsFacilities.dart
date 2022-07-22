// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/HospitalAppointmentForm.dart';

import 'BillingServices.dart';

class ShortcutsFacilities extends StatefulWidget {
  @override
  _ShortcutsFacilitiesState createState() =>
      _ShortcutsFacilitiesState();
}

class _ShortcutsFacilitiesState    extends State<ShortcutsFacilities> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
          Row(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 2,2,2),
            child: SizedBox(
                    height: 35.0,
                    width: 35.0,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xFF2BB9AD),
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: Image.asset('assets/icons/command.png'),
                      ),
                    )),
          ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
        child: Text(
          "Shortcuts",
          style: TextStyle(
              color: Color(0xFF464848),
              fontSize: 25,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),]),
      Divider(
        color: Color(0xFF2BB9AD),
        height: 4,
        thickness: 2,
      ),
      Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            
            elevation: 2,
            color: Color(0xFFF8F8F8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),)),
        child: SizedBox(
          height: 150,width: 380,child: Column(
          children: [
            Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                            child: const Text(
                              "Book Appointment",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HospitalAppointmentForm(),
                    ),
                  );
                },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xFF2BB9AD)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                ))),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(2),
                        child: SizedBox(
                          height: 50,
                          width: 180,
                          child: ElevatedButton(
                            child: const Text(
                              "Billing Services",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BillingServices(),
                    ),
                  );
                },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xFF2BB9AD)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                ))),
                          ),
                        ),
                      ),
          ],
        ),
      )
      )]))]));
  }
}
