// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class BillingServices extends StatefulWidget {
  @override
  _BillingServicesState createState() => _BillingServicesState();
}

class _BillingServicesState extends State<BillingServices> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 50, 10, 10),
        child: Column(
          children: [
            Row(
              children:[
             InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Image.asset('assets/icons/back.png'),
                                  height: 60,
                                  width: 60)),
                        ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                                  child: const Text(
          "The Aga Khan Hospital",
          style: TextStyle(
              color: Color(0xFF2BB9AD),
              fontSize: 22,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
                                ),]),
    
                              Row(children: [
                                Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5,5,5),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor:  (Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child:Image.asset('assets/icons/command.png') ),
                          ),
                        ),
                      ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Text(
          "Quick Actions",
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
                                  ),
                  
                  ],),
                  Divider(thickness: 2,height: 4,color: Colors.black,),
            Card(
              elevation: 3,
              color: Color(0xFFF8F8F8),
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 180, 20),
                    child: Text("Billing Services",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 7, 14, 32),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),),
                  ),
                    Row(
                      children: [
                        Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5,5,5),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor:  (Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child:Image.asset('assets/icons/insurance-provider.png') ),
                          ),
                        ),
                      ),
                        SizedBox(
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text("NHIF Accredited",
                              style: const TextStyle(
                                  color: Color(0xFF021F68),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),]),
                         Row(
                           children: [
                             Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5,5,5),
                        child: CircleAvatar(
                              radius: 26,
                              backgroundColor:  (Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(2), // Border radius
                                child: ClipOval(
                                    child:Image.asset('assets/icons/insurance-provider.png') ),
                              ),
                        ),
                      ),
                        SizedBox(
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text("CIC Insurance",
                              style: const TextStyle(
                                  color: Color(0xFF021F68),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),],
                         ),
                          Row(
                           children: [
                             Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5,5,5),
                        child: CircleAvatar(
                              radius: 26,
                              backgroundColor:  (Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(2), // Border radius
                                child: ClipOval(
                                    child:Image.asset('assets/icons/insurance-provider.png') ),
                              ),
                        ),
                      ),
                        SizedBox(
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text("Jubilee Insurance",
                              style: const TextStyle(
                                  color: Color(0xFF021F68),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),],
                         ),
                      ],
                    ),
            ),
          ],
            )
          ));
  }
}

   